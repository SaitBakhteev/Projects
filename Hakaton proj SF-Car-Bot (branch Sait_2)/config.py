import os
from dotenv import load_dotenv

load_dotenv()

TOKEN = os.getenv("TOKEN")

DB_URL = os.getenv("DB_URL")
DB_HOST = os.getenv("DB_HOST")
DB_PORT = os.getenv("DB_PORT")
DB_USER = os.getenv("DB_USER")
DB_PASS = os.getenv("DB_PASS")
DB_NAME = os.getenv("DB_NAME")


# TYPE_CHOICES = [
#     ("OL", "OIL"),  # масло
#     ("FL", "filter"),  # фильтр
#     ("SP", "Support"),  # тормозные колодки
#     ("FS", "Full Service"),  # полное ТО
# ]

TYPE_CHOICES = [ 'Замена масла',
                 'Замена колодок',
                 'Замена фильтра',
                 'Замена фар',
                 'Замена тормозных дисков',
                 'Смазка направляющих суппортов',
                 'Чистка и смазка задней тормозной системы',
                 'Диагностика на вибро-тормозном стенде',
                 'Замена тормозной жидкости',
                 'Чистка и смазка суппортов',
                 'Регулировка стояночного тормоза',
                 'Замена масла в КПП',
                 'Замена жидкость ГУР',
                 'Замена антифриза',
                 'Чистка дроссельной заслонки',
                 'Чистка топливных форсунок',
                 'Диагностика электрооборудования или ходовой части',
                 'Заправка кондиционера',
                 'Мойка радиаторов охлаждения',
                 'Регулировка клапанов',
                 'Регулировка развал-схождения',
                 'Замена ремень привода вспомогательного оборудования',
                 'Замена ремня ГРМ',
                 'Замена шаровой опоры',
                 'Замена воздушного фильтра',
                 'Замена шруса',
                 'Замена ступичного подшипника',
                 'Замена салонного фильтра',
                 'Замена свечей зажигания',
                 'Замена топливного фильтра',
                 'Замена стойки стабилизатора',
                 '',
                 '',
                 '',
                 '',


                ]

# # sqlite
# TORTOISE_ORM = {
#     "connections": {
#         "default": DB_URL,
#     },
#     "apps": {
#         "models": {
#             "models": ["app.database.models", "aerich.models"],
#             "default_connection": "default",
#         },
#     },
# }

# postgres
TORTOISE_ORM = {
    "connections": {
        "default": {
            "engine": "tortoise.backends.asyncpg",
            "credentials": {
                "host": DB_HOST,
                "port": DB_PORT,
                "user": DB_USER,
                "password": DB_PASS,
                "database": DB_NAME,
            },
        }
    },
    "apps": {
        "models": {
            "models": ["app.database.models", "aerich.models"],
            "default_connection": "default",
        }
    },
}

# t.me/sf_car_bot

