import logging

from aiogram.types import (
    InlineKeyboardMarkup,
    InlineKeyboardButton,
)
from aiogram.utils.keyboard import InlineKeyboardBuilder

logger = logging.getLogger(__name__)


# Кнопка возврата в стартовое меню в виде переменной и функции в зависимости от контекста
return_to_start = InlineKeyboardButton(text='⤴️ В начало', callback_data='return_to_start')

async def return_to_start_markup(process_interrupt=True) -> InlineKeyboardMarkup:
    keyboard = InlineKeyboardBuilder()
    caption = '⤴️ Прервать процесс' if process_interrupt else '⤴️ В начало'
    keyboard.button(text=caption, callback_data='return_to_start')
    return keyboard.as_markup()


# Просмотр доступных тренировок для дальнейшкей записи
show_trainings_kb = InlineKeyboardButton(text='📅 Выбрать тренировку 🖍', callback_data='show_trainings')
tutorial_kb = InlineKeyboardButton(text='💡 Инструкция по использованию бота📘', callback_data='tutorial')

''' КНОПКИ ДЛЯ АДМИНА '''
add_event_admin_kb = InlineKeyboardButton(text='💠 Создать тренировку 🗓', callback_data='add_event')
add_gym_kb_admin_kb = InlineKeyboardButton(text='💠 Добавить зал ➕', callback_data='add_gym')
look_gym_kb_admin_kb = InlineKeyboardButton(text='💠 Текущие залы 📍', callback_data='show_gyms')
admin_tutorial_kb = InlineKeyboardButton(text='💠 Инструкция для админа 📙', callback_data='admin_tutorial')
admin_list_admin_kb = InlineKeyboardButton(text='💠 Список админов 💵', callback_data='admin_list')

async def edit_admins() -> InlineKeyboardMarkup:
    keyboard = InlineKeyboardBuilder()
    keyboard.button(text='Добавить админа', callback_data='edit_admin:add')
    keyboard.button(text='Удалить админа', callback_data='edit_admin:delete')
    keyboard.add(return_to_start)
    keyboard.adjust(1)
    return keyboard.as_markup()

# Кнопки админа не в стартовом меню
async def admin_kb_markup(is_any_process=True) -> InlineKeyboardMarkup:
    keyboard = InlineKeyboardBuilder()
    if not is_any_process:
        keyboard.button(text='💠 Удалить зал ❌', callback_data='delete_gym')
    caption = '⤴️ Прервать процесс' if is_any_process else '⤴️ В начало'
    keyboard.button(text=caption, callback_data='return_to_start')
    return keyboard.as_markup()

async def start_menu(admin_perm=False) -> InlineKeyboardMarkup:
    keyboard = InlineKeyboardBuilder()
    keyboard.add(show_trainings_kb)
    keyboard.add(tutorial_kb)
    if admin_perm:
        keyboard.add(add_event_admin_kb)
        keyboard.add(add_gym_kb_admin_kb)
        keyboard.add(look_gym_kb_admin_kb)
        keyboard.add(admin_tutorial_kb)
        keyboard.add(admin_list_admin_kb)
    keyboard.adjust(1)
    return keyboard.as_markup()

async def keyboard_builder(prefix: str, lst: list,
                           return_to_start_for_interrupt=True
                           ) -> InlineKeyboardMarkup:

    try:
        keyboard = InlineKeyboardBuilder()
        for i, item in enumerate(lst):
            text, index = item, i  # Если итерируемый элемент не кортеж
            if isinstance(item, tuple):
                text = f"{item[1]} {item[0]}"
            if isinstance(item, dict):
                index = item['id']
                text = item['info']
            keyboard.button(text=text, callback_data=f"{prefix}:{index}")
        if return_to_start_for_interrupt:
            keyboard.add(InlineKeyboardButton(text='⤴️ Прервать процесс', callback_data="return_to_start"))
        else:
            keyboard.add(return_to_start)
        keyboard.adjust(1)
        return keyboard.as_markup()
    except Exception as e:
        logger.error(f"err = {e}")


# Инлайн-клавиатура для отображения всех запланированных тренировок
def show_events_kb(event_user: list, *args) -> InlineKeyboardMarkup:
    try:
        keyboard = InlineKeyboardBuilder()
        events_id_list = [item['event__id'] for item in event_user]
        for arg in args:
            tag = '🟢' if arg['id'] in events_id_list else ''
            gym, date = arg['gym__info'], arg['date'].strftime("%d.%m.%Y")
            begin, end = arg['begin'].strftime('%H:%M'), arg['end'].strftime('%H:%M')
            text = f"{tag} {arg['training_type']}; {date}, {begin} - {end}. {gym}"
            keyboard.button(text=text, callback_data=f"choose_event:{arg['id']}")
        keyboard.add(return_to_start)
        keyboard.adjust(1)
        return keyboard.as_markup()
    except Exception as e:
        logger.error(f'err = {e}')


# Фрмирование текста по тренировке со списком участников
async def show_text_about_event(event: dict, event_user: list) -> str:
    date = event['date'].strftime("%d.%m.%Y")
    begin, end = event['begin'].strftime('%H:%M'), event['end'].strftime('%H:%M')
    participants_count = int(event['participants_count'])

    #Формирование текущего списка запланированной тренировки
    text = (f"<b>{str(event['training_type']).upper()}</b>\n"
             f"<b>{event['gym__info']}: </b>\n"
             f"<b><i>Дата</i></b>: {date}.\n"
             f"<b><i>Начало</i></b>: {begin}.\n"
             f"<b><i>Конец</i></b>: {end}.\n"
             f"Квота на тренировку: <b><i>{participants_count} участников</i></b>\n\n"
             f"<b>ОСНОВНОЙ СПИСОК</b>\n")

    for i, item in enumerate(event_user):
        if i + 1 <= participants_count:
            if item['payment_confirmed'] is False:
                tag = '❌'
            elif not item['payment_confirmed'] and item['paid_check']:
                tag = '✔️'
            elif item['payment_confirmed']:
                tag = '✅'
            else:
                tag = '⚠️'
        else:
            tag = ''
        text+=f"{i+1}. {item['user__tg_name']} @{item['user__tg_username']}  {tag}\n"
        if i + 1 == participants_count:
            text += "\n 📌📌 <b><i>Резерв</i></b>: \n"

    text += ('\n<b>❗️ВАЖНАЯ ИНФОРМАЦИЯ</b>\n'
            '🔹\n'
            'Если вы оплатили за тренировку, настоятельно рекомендуется оповестить об этом бот. '
            'Для этого нажмите <i>"✔️ Я оплатил"</i>.\n'
            '🔹\n'
            'Кнопка <i>"✔️ Я оплатил"</i> доступна <u>ТОЛЬКО</u> участникам со статусом ⚠️;\n'
            '🔹\n'
            'Участники со статусами ⚠️ и ❌ при наступлении <i>ДЕДЛАЙНА</i> перемещаются ботом '
            'в конец очереди.\n\n'
            'Более подробную информацию читайте в <b>/train</b> и <b>/marks</b>.\n\n')

    return text


# Кнопки под списком участников тренировки
async def sign_up_for_training(
        signed_up_for_training: bool,
        availible_pay: bool,
        admin_permissions=False
) -> InlineKeyboardMarkup:
    try:
        keyboard = InlineKeyboardBuilder()
        if signed_up_for_training is False:
            keyboard.add(InlineKeyboardButton(
                text='Записаться на тренировку',
                callback_data='sign_up_for_training'
            ))
        else:
            keyboard.add(InlineKeyboardButton(
                text='Удалиться из тренировки',
                callback_data='delete_from_training'
            ))

        # Эта кнопка доступна при соблюдении 2 условий: участник в основном списке, поле 'payment_confirmed' в БД not True
        if availible_pay:
            keyboard.button(text='✔️ Я оплатил', callback_data='i_payed_check')
        if admin_permissions:
            keyboard.button(text='💠 Подтвердить оплату ✅', callback_data='verify_payment:confirm')
            keyboard.button(text='💠 Опровергнуть оплату ❌', callback_data='verify_payment:refute')
            keyboard.button(text='💠 Удалить участника 🚷', callback_data='drop_or_chancel:participant')
            keyboard.button(text='💠 🚫 ОТМЕНИТЬ ТРЕНИРОВКУ 💥', callback_data='drop_or_chancel:chancel_training')
        keyboard.add(return_to_start)
        keyboard.adjust(1)
        return keyboard.as_markup()
    except Exception as e:
        logging.error(e)


''' Функция, возвращающая инлайновые кнопки по записи на спортивные тренировки. 
Состав отображемых кнопок зависит от входных условий. Например, кнопка добавления
чека будет доступна толдко после того, как пользователь запишется на тренировку '''
training_sign_up_kb = InlineKeyboardMarkup(inline_keyboard =[
    [InlineKeyboardButton(text='Записаться на тренировку', callback_data='sign_up_to_section')],
    [InlineKeyboardButton(text='Загрузить чек об оплате', callback_data='check_upload'),
     InlineKeyboardButton(text='Удалить чек об оплате', callback_data='check_delete')]])
