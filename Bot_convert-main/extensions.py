import requests as rq
import json as js
from config import AVAILABLE_UNITS

class APIException (Exception):
    pass

class BotWork: # работа бота
    @staticmethod
    def get_price(quote: str, amount: str, base:str): # конвертация валюты
        try:
            amount=float(amount)
            quote, base = AVAILABLE_UNITS[quote], AVAILABLE_UNITS[base]
        except ValueError:
            raise APIException('Неверный формат числа конвертируемой валюты.')
        except KeyError:
            if quote not in AVAILABLE_UNITS.keys() and base not in AVAILABLE_UNITS.keys():
                raise APIException('Ни одна из валют недоступна. Список доступных валют можно посмотреть в /units')
            if quote not in AVAILABLE_UNITS.keys():
                raise APIException(f'Валюта "{quote}" недоступна. Список доступных валют можно посмотреть в /units')
            if base not in AVAILABLE_UNITS.keys():
                raise APIException(f'Валюта "{base}" недоступна. Список доступных валют можно посмотреть в /units')
        if quote==base:
            raise APIException(f'Конвертируемая и получаемая валюты должны отличаться')
        r = rq.get(f'https://min-api.cryptocompare.com/data/price?fsym={quote}&tsyms={base}')
        sale = float(js.loads(r.content)[base])
        convert_text = f'Стоимость {amount} {quote} составляет {round((amount * sale), 2)} {base}'
        return convert_text


