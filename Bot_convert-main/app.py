import telebot
from config import TOKEN, AVAILABLE_UNITS
from extensions import BotWork, APIException

bot = telebot.TeleBot(TOKEN)

@bot.message_handler(commands=['start']) # пояснительный текст при стартер бота
def echo(message:telebot.types.Message):
    text = ('Введите сообщение в следующем формате (подробная инструкция в /help):\n'
            '"конвертируемая валюта, размер конвертируемой валюты, получаемая валюта"')
    bot.send_message(message.chat.id, text)

@bot.message_handler(commands=['help'])
def help(message:telebot.types.Message): # инструкция применения бота с примером
    text = ('Для конвертации валюты необходимо ввести текст в следующем порядке:\n'
            '1. Название конвертируемой валюты на русском языке в именительном падеже.\n'
            '2. Запятая ",".\n'
            '3. Размер конвертируемой валюты в виде целого или нецелого числа с плавающей точкой (X.XX).\n'
            '4. Запятая ",".\n'
            '5. Название получаемой валюты на русском языке"\n'
            'Примеры:\n'
            '1. Для перервода 5 долларов в рубли нужно ввести: доллар, 5, рубль\n'
            '2. Для перервода 0.5 биткоинов в евро нужно ввести: биткоин, 0.5, евро.\n'            
            'Список доступных боту валют можно посмотреть в /units"')
    bot.send_message(message.chat.id, text)


@bot.message_handler(commands=['units']) # отображение доступных валют в чат боте
def units(message:telebot.types.Message):
    text_available_units = 'Доступные валюты:\n'
    for i, item in enumerate(AVAILABLE_UNITS):
        text_available_units += f'{i + 1}. {item.title()} - {AVAILABLE_UNITS[item]}\n'
    bot.send_message(message.chat.id,text_available_units)

@bot.message_handler(content_types=['text',]) #ввод пользователем сообщения для ковертации и последующая конвертация
def conv(message:telebot.types.Message):
    try:
        if message.text.count(',')!=2:
            raise APIException ('Нарушен формат ввода. Подробно инструкцию можно посмотреть в /help')
        quote, amount, base=(message.text.replace(' ', '').lower().split(',')) # текст, вводимый пользователем
        text=BotWork.get_price(quote, amount, base)
        bot.send_message(message.chat.id,text)
    except APIException as e: # отлов пользовательских ошибок
            bot.send_message(message.chat.id, e)
    except Exception as e: # отлов ошибок, не связанных с пользователем
            bot.send_message(message.chat.id, f'Произошла непредвиденная ошибка. Описание ошибки:\n{e}')

bot.polling()
