import logging

from aiogram import Router, F, BaseMiddleware
from aiogram.types import Message, CallbackQuery, TelegramObject
from aiogram.filters import CommandStart, Command
from aiogram.fsm.context import FSMContext
from typing import Callable, Dict, Any, Awaitable

import app.database.requests as db_req  # импортирование модуля запросов к БД

from app.calendar import NewCalendar

from datetime import datetime, timedelta, time, date
from aiogram_calendar import SimpleCalendarCallback

import app.keyboards as kb
import app.states as st

from app.tutorial import TUTORIAL, ADMIN_TUTORIAL, SIGN_UP_FOR_TRAINING_TUTORIAL, MARKS_DESCRIPTION

from config import TRAINING_TYPES

logger = logging.getLogger(__name__)
user = Router()

# Кэш список пользователей
user_cache = dict()

# Мидлварь для проверки прав пользователя
class AdminMiddleware(BaseMiddleware):
    async def __call__(
            self,
            handler: Callable[[TelegramObject, Dict[str, Any]], Awaitable[Any]],
            event: TelegramObject,
            data: Dict[str, Any]
    ) -> Any:
        # Проверяем, является ли пользователь администратором
        if isinstance(event, (Message, CallbackQuery)):
            user_tg_id = event.from_user.id

            ''' Здесь несеольео нелогичный код, он чисто для перестраховки, если вдруг
            при первом входе что-то пойдет не так при создании пользователя в БД.
            Также перестраховка по поводжу перезапускасервера  '''
            if user_tg_id not in user_cache:
                user = await db_req.get_or_create_user(event.from_user)
                user_cache[user_tg_id] = user
                if user:
                    data["is_admin"] = user.admin_permissions
                else:
                    data["is_admin"] = False

                # Здесь возвращаем при первом входе пользователя или перезапуске сервера
                return await handler(event, data)
            else:
                if user_cache[user_tg_id] is None:
                    user_cache[user_tg_id] = await db_req.get_or_create_user(event.from_user)

            user = user_cache[user_tg_id]

            if user:
                data["is_admin"] = True if event.from_user.username=='Rustambagautdinov'\
                    else user.admin_permissions
            else:
                data["is_admin"] = False

        # Передаем управление следующему обработчику
        return await handler(event, data)

user.message.middleware(AdminMiddleware())
user.callback_query.middleware(AdminMiddleware())

# ----- ОБРАБОТКА /start -----------
@user.message(CommandStart())
async def cmd_start(message: CallbackQuery | Message, state: FSMContext, is_admin: bool):
    try:
        await state.clear()
        is_new_user = True if user_cache[message.from_user.id] is None else False
        message = message.message if isinstance(message, CallbackQuery) else message
        if is_new_user:
            await message.answer(f"Здравствуйте, {message.from_user.first_name}! Это бот "
                                 f"для записи на тренировки. Приятного пользования!\n")
        admin_perm = is_admin
        await message.answer('<b>Стартовое меню:</b>',
                             reply_markup=await kb.start_menu(admin_perm),
                             parse_mode='HTML')
    except Exception as e:
        logger.error(e)
        return

@user.callback_query(F.data=='return_to_start')
async def return_to_start(call: CallbackQuery, state: FSMContext, is_admin: bool):
    await cmd_start(call, state, is_admin)



''' КНОПКИ ДЛЯ ВЫВОДА ИНСТРУКЦИЙ '''

# Вызов TUTORIAL через инлайн-кнопку или команду '/help'
@user.message(Command('help'))
@user.callback_query(F.data=='tutorial')
async def tutorial(update: CallbackQuery | Message, state: FSMContext):
    await state.clear()
    message = update.message if isinstance(update, CallbackQuery) else update
    await message.answer(TUTORIAL, parse_mode='HTML', reply_markup=await kb.return_to_start_markup(False))


@user.message(Command('train'))
async def show_sign_up_for_training_tutorial(message: Message, state: FSMContext):
    await state.clear()
    await message.answer(SIGN_UP_FOR_TRAINING_TUTORIAL, parse_mode='HTML', reply_markup=await kb.return_to_start_markup(False))


@user.message(Command('marks'))
async def marks_description(message: Message):
    await message.answer(MARKS_DESCRIPTION, parse_mode='HTML', reply_markup=await kb.return_to_start_markup(False))


@user.callback_query(F.data=='show_trainings')
async def show_trainings(call: CallbackQuery, state: FSMContext, is_admin: bool):
    await state.clear()
    await call.message.delete()
    events = await db_req.get_event()
    event_user = await db_req.get_event_user(user_tg_id=call.from_user.id)
    if not events:
        await call.message.answer('Запланированных тренировок пока нет.')
        await cmd_start(call, state, is_admin)
    else:
        await call.message.answer(
            'Если видите знак 🟢, значит Вы ранее записались на данную тренировку.\n'
            'Выберите тренировку:',
            reply_markup=kb.show_events_kb(
                event_user,*events
            ),
            parse_mode='HTML'
        )
        await state.update_data(events=events)


# Сообщения о багах от пользователей
@user.message(Command('bug'))
async def bug(message: Message, state:FSMContext):
    await message.answer('Напишите о проблеме работы бота и отправьте сообщение.',
                         reply_markup= await kb.return_to_start_markup())
    await state.set_state(st.WrightBugsFSM.wright_bug)

@user.message(st.WrightBugsFSM.wright_bug)
async def send_bugs_message(message: Message, state: FSMContext, is_admin:bool):
    try:
        text = message.text
        if '0' not in text:
            logger.critical(text, extra={'username': message.from_user.username})
            await message.answer('Благодарим Вас за обратную связь.')
        else:
            raise Exception
    except Exception as e:
        await message.answer('Извините возникла ошибка.\n'
                             'Возможно причина в отстуствии имени аккаунта телеграмм.')
        logger.error('Error on /bugs')
        pass
    await cmd_start(message, state, is_admin)

# Список админов
@user.callback_query(F.data=='admin_list')
async def admin_list(call: CallbackQuery, state: FSMContext):
    try:
        text = ''
        for k in user_cache:
            if user_cache[k].admin_permissions == True:
                text += f'{user_cache[k].tg_username}\n'
            if len(text) > 0:
                await call.message.answer(text, reply_markup=await kb.edit_admins())
            else:
                await call.message.answer('Кроме Вас больше нет админов', reply_markup=await kb.edit_admins())
    except Exception as e:
        await call.message.answer('Возникла неизвестная ошибка.')
        logger.info(f'Error_on admin_list: {e}')
        await cmd_start(call, state, True)


@user.callback_query(F.data.startswith('edit_admin:'))
async def edit_admin(call: CallbackQuery, state: FSMContext):
    try:
        call_data = call.data.split(':')[1]
        admin_permissions = True if call_data == 'add' else False
        await state.update_data(admin_permissions=admin_permissions)
        await state.set_state(st.EditAdminFSM.edit_admin)
        await call.message.answer('Введите имя аккаунта, <i>без"@"</i>, пользователя телеграмм, '
                             'у которого хотите поменять админский статус.\n '
                             '<i>Например, если у пользователя аккаунт <u>"@Ivanov_79"</u>, то '
                             'нужно ввести <u>"Ivanov_79"</u></i>.',
                             reply_markup=await kb.return_to_start_markup(), parse_mode='HTML')

        await state.set_state(st.EditAdminFSM.edit_admin)
    except Exception as e:
        logger.error(e)
        await call.message.answer('Возникла ошибка.')
        await cmd_start(call, state, True)

@user.message(st.EditAdminFSM.edit_admin)
async def finish_edit_admin(message: Message, state: FSMContext):
    try:
        tg_username = message.text.replace('@', '')
        data = await state.get_data()
        admin_permissions = data['admin_permissions']
        user, tg_id = await db_req.update_admin_and_get(tg_username, admin_permissions)
        user_cache[tg_id] = user
        await message.answer('Статус изменен.')
    except Exception as e:
        logger.error(e)
        await message.answer('Возникла ошибка.')
        pass
    await cmd_start(message, state, True)


# После выбора тренировки отображается текущий список заявишихся участников
@user.callback_query(F.data.startswith('choose_event'))
async def choose_event(update: CallbackQuery | Message, state: FSMContext,
                       is_admin: bool):
    try:
        data = await state.get_data()
        events = data.get('events')
        this_call_query = None # специальный флаг, определяющий работу этой функции

        if isinstance(update, CallbackQuery):
            this_call_query = True if update.data.startswith('choose_event') else False

        event_id = int(update.data.split(':')[1]) if this_call_query else data.get('event_id')
        event = next(item for item in events if item['id'] == event_id) if this_call_query else data.get('event')
        event_user = await db_req.get_event_user(event_id=event_id)
        text = await kb.show_text_about_event(event, event_user)
        call_id = update.from_user.id

        await state.update_data(event_id=event_id, event=event, event_user=event_user)

        # Определение параметров отображения инлайн-клавиатуры
        availible_pay, paid_check, payment_confirmed = False, None, None
        signed_up_for_training =True if any(item['user__tg_id'] == call_id for item in event_user)\
            else False

        # Если пользователь ранее записался на эту тренировку, то кнопка записи на тренировку не отображается
        if signed_up_for_training:
            user_id, paid_check, payment_confirmed = (
                next((item['user__id'], item['paid_check'], item['payment_confirmed'])
                     for item in event_user if item['user__tg_id'] == call_id))
            await state.update_data(user_id = user_id)

            # Определение критериев доступности кнопки оповещения бота об оплате
            participants_count = int(event['participants_count'])
            user_place_on_list = next(i+1 for i, item in enumerate(event_user)
                                      if item['user__tg_id']==call_id)
            availible_pay = True if (user_place_on_list <= participants_count
                                     and paid_check is None
                                     and payment_confirmed is None ) else False

        keyboard = await kb.sign_up_for_training(signed_up_for_training,
                                                 availible_pay,
                                                 admin_permissions=is_admin)
        if isinstance(update, CallbackQuery):
            await update.message.delete()
            await update.message.answer(text, parse_mode='HTML', reply_markup=keyboard)
        else:
            await update.answer(text, parse_mode='HTML', reply_markup=keyboard)
    except Exception as e:
        logger.error(e)


# Записаться на тренировку
@user.callback_query(F.data=='sign_up_for_training')
async def sign_up_for_training(call: CallbackQuery, state: FSMContext, is_admin: bool):
    try:
        # await call.message.delete()
        await call.message.answer('Вы записались на тренировку.\n'
                                  'Если у вас уже оплачена эта тренировка, нажмите на кнопку'
                                  '<i>"✔️ Я оплатил"</i>')
        data = await state.get_data()
        user = await db_req.get_or_create_user(call.from_user, True)
        data['user_id'] = user['id']
        await db_req.create_event_user(data)
        await choose_event(call, state, is_admin)
    except Exception as e:
        logger.error(e)


# Оповестить бот об оплате кнопкой '✔️ Я оплатил'
@user.callback_query(F.data=='i_payed_check')
async def i_payed_check(call: CallbackQuery, state: FSMContext, is_admin: bool):
    try:
        data = await state.get_data()
        user_id, event_id = data['user_id'], data['event_id']
        await db_req.update_event_user(user_id=user_id, event_id=event_id,
                                       paid_check=True, payment_confirmed=False)
        await choose_event(call, state, is_admin)
    except Exception as e:
        logger.error(e)


# Удалиться из тренировки
@user.callback_query(F.data=='delete_from_training')
async def delete_from_training(call: CallbackQuery, state: FSMContext, is_admin: bool):
    data = await state.get_data()
    user_id, event_id = data.get('user_id'), data.get('event_id')
    await db_req.delete_event_user(user_id, event_id)
    # await call.message.delete()
    await state.clear()
    await call.answer('Вы удалились из записи на тренировку.')
    await cmd_start(call, state, is_admin)



''' ДОСТУПНЫЕ АДМИНУ ФУНКЦИИ  '''

# Инструкция для админа
@user.message(Command('admin'))
@user.callback_query(F.data=='admin_tutorial')
async def admin_tutorial(update: CallbackQuery | Message, state: FSMContext):
    await state.clear()
    message = update.message if isinstance(update, CallbackQuery) else update
    await message.answer(ADMIN_TUTORIAL, parse_mode='HTML',
                              reply_markup=await kb.return_to_start_markup(False))

# Добавление зала админом
@user.callback_query(F.data=='add_gym')
async def add_gym(call: CallbackQuery, state: FSMContext, is_admin: bool):
    await state.clear()
    await call.message.delete()
    await call.message.answer(
        'Введите краткую информацию о зале с указанием его адреса.\n'
        '<b>Пример</b>: <i>"Зал КХТИ, К.Маркса 72"</i>',
        parse_mode='HTML', reply_markup= await kb.return_to_start_markup()

    )
    await state.set_state(st.CreateGymFSM.info)

@user.message(st.CreateGymFSM.info)
async def create_gym(message: Message, state: FSMContext):
    await message.delete()
    await db_req.create_gym(message.text)
    await state.clear()
    await message.answer('Новый зал добавлен успешно.')
    await show_gyms(message, state)

@user.callback_query(F.data=='show_gyms')
async def show_gyms(call: CallbackQuery | Message, state: FSMContext):
    if isinstance(call, CallbackQuery):
        await call.message.delete()
    text='<b>Список спортзалов</b>:\n'
    gyms = await db_req.get_gyms(for_telegramm=True)
    if gyms:
        for i, gym in enumerate(gyms):
            text += f"<b><i>{i+1}</i></b>. {gym['info']}.\n"
        await state.update_data(gyms=gyms)
        if isinstance(call, CallbackQuery):
            await call.message.answer(text, parse_mode='HTML', reply_markup=await kb.admin_kb_markup(False))
        else:
            await call.answer(text, parse_mode='HTML', reply_markup=await kb.admin_kb_markup(False))
    else:
        await call.answer('Список залов пока пуст')
        await cmd_start(call, state, True)

# Удаление зала
@user.callback_query(F.data=='delete_gym')
async def delete_gym(call: CallbackQuery, state: FSMContext):
    text='Укажите порядковый номер спортзала и отправьте сообщение боту.'
    await call.message.answer(text, reply_markup=await kb.admin_kb_markup())
    await state.set_state(st.DeleteGymFSM.delete_gym)

@user.message(st.DeleteGymFSM.delete_gym)
async def add_event_begin(message: Message, state: FSMContext):
    data = await state.get_data()
    gyms = data.get('gyms')
    try:
        number = int(message.text)
        if number < 1 or number > len(gyms):
            raise ValueError
        else:
            index = number - 1
            gym_id = gyms[index]['id']
            await db_req.delete_gym(gym_id)
            await message.answer('Удаление зала проведено успешно')
        await state.clear()
        await show_gyms(message, state)
    except ValueError:
        await message.answer('🚫Операция прервана, введено некорректное число.')
        await state.clear()
        await show_gyms(message, state)
    except Exception as e:
        logger.error(e)

# -------------------------

# СОЗДАНИЕ ТРЕНИРОВКИ

@user.callback_query(F.data=='add_event')
async def add_event(call: CallbackQuery, state: FSMContext):
    await state.clear()
    await call.message.answer('Выберите тип тренировки.',
                              reply_markup=await kb.keyboard_builder(
                                  'training_type', TRAINING_TYPES
                              ))
    await state.set_state(st.CreateEventFSM.training_type)

# Выбор типа тренировки
@user.callback_query(F.data.startswith('training_type'), st.CreateEventFSM.training_type)
async def choose_training_type(call: CallbackQuery, state: FSMContext):
    await call.message.delete()
    index = int(call.data.split(':')[1])
    training_type = TRAINING_TYPES[index][1]
    await state.update_data(training_type=training_type)
    gyms = await db_req.get_gyms(for_telegramm=True)
    if gyms:
        keyboard = await kb.keyboard_builder('choose_gym', gyms)
        await call.message.answer('Выберите зал для тренировки', reply_markup=keyboard)
        await state.set_state(st.CreateEventFSM.gym)
    else:
        await call.message.answer('Вы не можете создавать тренировки, поскольку '
                                  'у вас пока нет ни оного зала.')
        await cmd_start(call, state, True)


# Выбор зала
@user.callback_query(F.data.startswith('choose_gym') and st.CreateEventFSM.gym)
async def choose_gym(call: CallbackQuery, state: FSMContext):
    await call.message.delete()
    await state.update_data(gym_id=int(call.data.split(':')[1]))
    try:
        await call.message.answer('Выберите дату проведения тренировки.', reply_markup= await NewCalendar().start_calendar())
        await state.set_state(st.CreateEventFSM.date)
    except Exception as e:
        logger.error(e)


# выбор даты проведения тренировки
@user.callback_query(SimpleCalendarCallback.filter(), st.CreateEventFSM.date)
async def choose_date_training(call: CallbackQuery, callback_data: SimpleCalendarCallback,
                               state: FSMContext, is_admin: bool):
    try:
        calendar = NewCalendar()
        calendar.show_alerts = True
        early_date = datetime.now() + timedelta(days=1)  # ранняя дата напоминания (завтра)
        late_date = datetime.now() + timedelta(days=365)  # поздняя дата (через год)
        calendar.set_dates_range(early_date, late_date)
        selected, _date = await calendar.process_selection(call, callback_data)
        if selected:
            selected_date = date(_date.year, _date.month, _date.day)
            await state.update_data(date=selected_date)
            await call.answer (f'Выбрана дата {selected_date.strftime("%d.%m.%Y")}')
            await call.message.delete()
            await call.message.answer(
                'Укажите время начала  и окончания тренировки'
                'в формате "ЧЧ:ММ / ЧЧ:ММ".\n'
                'Пример: <i>10:30 / 12:30</i>.',
                parse_mode='HTML', reply_markup=await kb.return_to_start_markup()
            )
            await state.set_state(st.CreateEventFSM.time)
        if 'CANCEL' in call.data:
            await call.answer()
            await cmd_start(call, state, is_admin)
    except Exception as e:
        logger.error(e)


# установка времени проведения тренировки
@user.message(st.CreateEventFSM.time)
async def set_training_time(message: Message, state: FSMContext):
    await message.delete()
    try:
        times = message.text.replace(' ', '').split('/')
        begin_time, end_time = times[0], times[1]

        # Часы и минуты переделываются в int-формат во избежание ошибок при создании объектов time
        begin_hour, begin_minute = map(int, begin_time.split(':'))
        end_hour, end_minute = map(int, end_time.split(':'))
        begin, end = time(begin_hour, begin_minute), time(end_hour, end_minute)

        if end > begin: # время окончания должно быть позже времени начала, иначе ошибка
            await state.update_data(begin=begin, end=end)
            await message.answer(
                f'Вы определили следующее время тренировки:\n'
                f'<b><i>Начало</i></b>: {begin.strftime("%H:%M")};\n'
                f'<b><i>Конец</i></b>: {end.strftime("%H:%M")}.\n'
                f'Теперь введите количество участников:',
                parse_mode='HTML', reply_markup=await kb.return_to_start_markup()
            )
            await state.set_state(st.CreateEventFSM.participants_count)
        else:
            await message.answer('🟡 Время окончания должно быть позже времени начала.\n'
                                 'Повторите ввод',
                                 reply_markup=await kb.return_to_start_markup())
            return
    except ValueError:
        await message.answer('⚠️ Введены некорректные значения времени.\n'
                             'Повторите ввод',
                             reply_markup=await kb.return_to_start_markup())
        return
    except Exception as e:
        await message.answer('❌ Нарушен формат, повторите ввод.',
                             reply_markup=await kb.return_to_start_markup())
        return


@user.message(st.CreateEventFSM.participants_count)
async def set_participants_count_and_finish_create_event(
        message: Message, state: FSMContext, is_admin: bool
):
    try:
        if message.text[0]=='0':
            await message.answer('Число не может начинаться с нуля.\n'
                                 'Повторите ввод',
                                 reply_markup=await kb.return_to_start_markup())
            return
        participants_count = int(message.text.replace(' ', ''))

        # Извлечение из state временно сохраненного значения gym_id
        data = await state.get_data()
        gym_id = int(data.get('gym_id'))
        gym = await db_req.get_gyms(id=gym_id)

        await state.update_data(participants_count=participants_count,
                                gym=gym)
        data = await state.get_data()
        await db_req.create_event(data)
        await message.answer(
            f"Создана следующая тренировка:\n"
            f"<i>Тип занятия</i>: {data.get('training_type')};\n"
            f"<i>Зал</i>: {gym};\n"
            f"<i>Дата и время</i>: {data.get('date')}, {data.get('begin')} - {data.get('end')};\n"
            f"<i>Число участников</i>: {participants_count};\n",
            reply_markup=await kb.return_to_start_markup())
        await state.clear()
        await cmd_start(message, state, is_admin)
    except ValueError:
        await message.answer('❗ Нарушен формат числа, нужно вводить целое число.\n'
                             'Повторите ввод:',
                             reply_markup=await kb.return_to_start_markup())
        return
    except Exception as e:
        logger.error(e)
        await message.answer('🚫 Возникла ошибка, повторите ввод:',
                             reply_markup=await kb.return_to_start_markup())
        return

    await state.update_data(participants_count=int(message.text))

#----------Конец по добавке тренировки --------------


@user.callback_query(F.data.startswith('verify_payment:'))
async def payment_verification(call: CallbackQuery, state: FSMContext):
    try:
        # Нажата кнопка '✅ Подтвердить оплату' или '❌ Опровергнуть оплату'
        verify_type = call.data.split(':')[1]
        await state.update_data(verify_type=verify_type)

        if verify_type == 'confirm':
            text = ("Вы выбрали тип верификации <i>'✅ Подтвердить оплату'</i>.\n"
                    "Данное действие вы можете осуществить только для участников со статусами ✔️, ⚠️ и ❌.\n")
        else:
            text = ("Вы выбрали тип верификации <i>'❌ Опровергнуть оплату'</i>.\n"
                    "Данное действие вы можете осуществить только для участников со статусом ✔️.\n"
                    "Если ни один из выбранных вами участников не будет соответствовать данному критерию, "
                    "то бот отменит операцию.\n")

        text += ('\n Чтобы выполнить соответсвующую верификацию, наберите <i><u>через запятую</u></i> порядковые '
                 'номера участников в вышеприведенном списке👆🏻 в виде <u>сообщения</u>, после чего отправьте его боту.\n'
                 'Например, для верификации 3-го, 5-го и 8-го участников в списке наберите сообщение так:\n'
                 '<i><b>3, 5, 8</b></i>\n\n'
                 "<i>Примечание</i>: статусы могут быть обновлены <u>частично</u> или вовсе <u>не обновлены</u>.\n"
                 'С более подробной иформацией можете ознакомиться в <b>/admin</b>')
        await call.message.answer(text, parse_mode='HTML', reply_markup=await kb.return_to_start_markup())
        await state.set_state(st.UpdateEventUserFSM.payment_confirmed)
    except Exception as e:
        logger.error(e)

@user.message(st.UpdateEventUserFSM.payment_confirmed)
async def confirm_payment(message: Message, state: FSMContext, is_admin: bool):
    try:
        data = await state.get_data()
        event, event_user, verify_type = (data.get('event'), data.get('event_user'),
                                          data.get('verify_type'))
        participants_count = event['participants_count']

        # Список порядковых номеров участников, которые введены админом для подтверждения оплаты
        number_list = message.text.replace(' ', '').split(',')
        number_list = list(map(int, number_list))

        # Если админ номера (в т.ч. 0), выходящие за пределы ОСНОВНОГО СПИСКА
        if any(num > participants_count or num==0 for num in number_list):
            raise IndexError
        index_list =  list(map(lambda x: x-1, number_list))

        # Формирование списка id объектов EventUser для обновления в БД значений поля 'payment_confirmed'
        if verify_type == 'confirm':  # Подтвердить платеж можно только, если поле 'payment_confirmed' не True
            id_list = [event_user[i]['id'] for i in index_list if event_user[i]['payment_confirmed'] is not True]
        else: # Опровергнуть платеж можно, если 'payment_confirmed' пустое и 'paid_check' не пустое
            id_list = [event_user[i]['id'] for i in index_list if event_user[i]['payment_confirmed'] is None
                       and event_user[i]['paid_check'] is not None]

        # Обновление в БД
        if len(id_list) > 0:
            if verify_type=='refute':
                await db_req.update_event_user_for_payment_verify(id_list, is_confirm=False)
            else:
                await db_req.update_event_user_for_payment_verify(id_list)
            report = ('👁‍🗨 Обновление статусов проведено <i>частично</i>. '
                      'Причины описаны в <b>/admin</b>.') if len(id_list)<len(number_list)\
                else '🔷 Статусы всех указанных участников обновлены.'
        else:
            report = '🛑 Статусы <b>не обновлены</b>. Причины описаны в <b>/admin</b>.'
        await message.answer(report, parse_mode='HTML')
        await choose_event(message, state, is_admin)

    except ValueError:
        await message.answer('Нужно <i><u>через запятую</u></i> вводить только '
                             '<b>целочисленные значения</b>. Повторите ввод.',
                             parse_mode='HTML',
                             reply_markup=await kb.return_to_start_markup(process_interrupt=True))
        return
    except IndexError:
        await message.answer(f'Допустимы только порядковые номера из '
                             f'<u>ОСНОВНОГО СПИСКА</u>.\n'
                             f'Повторите ввод.',
                             parse_mode='HTML',
                             reply_markup=await kb.return_to_start_markup(process_interrupt=True))
    except Exception as e:
        logger.error(e)
# ---------- Конец верификации оплаты ---------------

# ---------- Исключение участников, отмена тренировки ---------------
@user.callback_query(F.data.startswith('drop_or_chancel'))
async def drop_or_chancel(call: CallbackQuery, state: FSMContext):
    call_data = call.data.split(':')[1]
    if call_data == 'participant':
        text = ('Укажите в сообщении боту порядковый номер участника, которого '
                'хотите исключить из тренировки и отправьте это сообщение.')
        await state.set_state(st.DropParticipantFromTrainFSM.drop_participant)
    else:
        text = ('Если точно хотите отменить эту тренировку, введите "да" '
                'в сообщении боту, иначе операция будет отменена.')
        await state.set_state(st.ChancelTraininigFSM.chancel_training)
    keyboard = await kb.return_to_start_markup()
    await call.message.answer(text, reply_markup=keyboard)


@user.message(st.DropParticipantFromTrainFSM.drop_participant)
async def drop_participant_state(message: Message, state: FSMContext, is_admin: bool):
    try:
        data = await state.get_data()
        event_user, event_id = data.get('event_user'), data.get('event_id')
        index = int(message.text) # порядковый номер участника

        if index > len(event_user) or index == 0:
            raise IndexError

        user_id = next(item['user__id'] for i, item in enumerate(event_user) if i==index-1)

        await db_req.delete_event_user(user_id, event_id=event_id)
        await message.answer('Участник удален.')

    except ValueError:
        await message.answer('Допустим ввод только одного целого числа.\n'
                             'Операция отклонена.')
        pass
    except IndexError:
        await message.answer(f'Таких порядковых номеров нет в списке.\n'
                             f'Операция отклонена.')
        pass
    except Exception as e:
        logger.error(e)
        pass

    await state.set_state(None)
    await choose_event(message, state, is_admin)


@user.message(st.ChancelTraininigFSM.chancel_training)
async def chancel_training_state(message: Message, state: FSMContext, is_admin: bool):
    await state.set_state(None)
    if message.text.lower() == 'да':
        data = await state.get_data()
        event_id = data.get('event_id')
        await db_req.delete_event(event_id)
        await message.answer('Тренировка удалена.')
        await cmd_start(message, state, is_admin)
    else:
        await message.answer('Удаление тренировки отменено.')
        await choose_event(message, state, is_admin)

''' ----------- КОНЕЦ АДМИНСКИХ ФУНКЦИЙ  ------------ '''



