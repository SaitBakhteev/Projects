"""
В данном модуле выполняются задачи по расписанию.
1. Перемещение в конец очереди тех участников, которые не соблюли
условия дедлайна оплаты. При наступлении дедлайна оплаты в конец очереди
переместятся участники ОСНОВНОГО СПИСКА, у которых:
- paid_check == null и payment_confirmed != True;
- paid_check != null и payment_confirmed == False и current_position <= participants_count.

Алгоритм перемещения в конец очереди:
1) Получаем из БД объекты EventUser в отсортированном по 'event_id' виде;
2) Формируется словарь с ключами 'event_id', которым присваивается список объектов;
3) Каждый список, переданный ключам, сортируется по 'created_at';
4) Производится итерирование по каждому из этих списков, где обновляется время для участников,
соответвстующие условиям дедлайна

2. Удаляются неактуальные тренировки
"""

import logging

from tortoise.exceptions import DoesNotExist, DBConnectionError
from datetime import date, datetime, timedelta, timezone
from app.database.models import Event, EventUser


logger = logging.getLogger(__name__)

# Удаление записей прошедших тренировок из БД
async def delete_events():
    today = date.today()
    await Event.filter(date__lt=today).delete()


async def update():
    try:
        # Установка порогового значения даты, определяющая дедлайн оплаты
        now = datetime.now(tz=timezone.utc)
        dedline_date = now - timedelta(days=1)

        # Получение из БД всех объектов EventUser
        event_user = await (EventUser.all().select_related('event').
                            order_by('event_id'))

        # Распределение объектов event_user по ключам 'event_id' в новом словаре
        _dict = dict()
        for i, item in enumerate(event_user):
            if item.event.id not in _dict.keys():
                _dict[item.event.id] = []
            _dict[item.event.id].append(item)

        # Сортировка сформированных списков в словаре по 'created_at'
        sorted_dict = {k: sorted(v, key=lambda obj: obj.created_at) for k, v in _dict.items()}

        # Обновление полей для участников, соответствующих условиям дедлайна
        update_id_list = []  # список id записей, которые будут использоваться в фильтре запроса к БД
        for item in sorted_dict:
            participants_count = sorted_dict[item][0].event.participants_count
            seconds = 0
            for i, obj in enumerate(sorted_dict[item]):
                if obj.created_at <= dedline_date:
                    if (obj.paid_check is None and obj.payment_confirmed is None) \
                            or (obj.paid_check is not None and obj.payment_confirmed is False):
                        seconds += 1
                        update_datetime = now + timedelta(seconds=seconds)
                        obj.paid_check, obj.payment_confirmed, obj.created_at = (
                            None, None, update_datetime)
                        update_id_list.append(obj.id)

                ''' Если дошли до конца основного списка, то прерываем итерирование и переходим
                 к следующему ключу в словаре '''
                if i == participants_count - 1:
                    break
        await (EventUser.filter(id__in=update_id_list).
               bulk_update(event_user,['paid_check', 'payment_confirmed', 'created_at']))
    except DoesNotExist as e:
        logger.info(f'DoesNotExist: {e}')
    except DBConnectionError as e:
        logger.info(f'DBConnectionError: {e}')
    except Exception as e:
        logger.error(e)
