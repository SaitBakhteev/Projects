import asyncio
import logging

from aiogram import Bot, Dispatcher
from aiogram.client.default import DefaultBotProperties
from aiogram.enums import ParseMode

from apscheduler.schedulers.asyncio import AsyncIOScheduler
from apscheduler.triggers.cron import CronTrigger

from tortoise import Tortoise

from app.user import user
from config import TOKEN, DB_URL, DB_USER, DB_PASS, DB_HOST, DB_PORT, DB_NAME
from app.schedule import delete_events, update

logger = logging.getLogger(__name__)

# Общий для всех обработчиков формат вывода сообщений в лог-файлы
FORMATTER = logging.Formatter('{asctime} - {name} - {levelname} - {message}',
                              style='{')

info_file_handler = logging.FileHandler('logs/general.log')
info_file_handler.setLevel('INFO')
info_file_handler.setFormatter(FORMATTER)

error_file_handler = logging.FileHandler('logs/error.log')
error_file_handler.setLevel('ERROR')
error_file_handler.setFormatter(FORMATTER)

# Нестандартное логирование, для записи жалоб на работу бота от пользователей
msg_handler = logging.FileHandler('logs/bot.log')
msg_handler.setLevel('CRITICAL')
msg_formatter = logging.Formatter('{asctime}:{username} -- {message}',
                                  style='{')
msg_handler.setFormatter(msg_formatter)

bot = Bot(token=TOKEN, default=DefaultBotProperties(parse_mode=ParseMode.HTML))

logging.basicConfig(format=logging.BASIC_FORMAT,
                    level=logging.INFO,
                    handlers=[info_file_handler, error_file_handler, msg_handler,
                              logging.StreamHandler()]
                    )


async def startup(dispatcher: Dispatcher):
    try:
        await Tortoise.init(
            db_url=f"postgres://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}",
            modules={"models": ["app.database.models"]},
        )
        await Tortoise.generate_schemas()
        scheduler = AsyncIOScheduler()
        scheduler.add_job(delete_events, CronTrigger(hour=1, minute=58))
        scheduler.add_job(update, CronTrigger(hour=2, minute=0))
        scheduler.start()
        logger.info("Starting Bot...")
    except Exception as e:
        logger.error(f"ERROR_on_Starting Bot...: {e}")

async def shutdown(dispatcher: Dispatcher):
    await Tortoise.close_connections()
    exit(0)


async def main():
    dp = Dispatcher()
    dp.include_router(user)
    dp.startup.register(startup)
    dp.shutdown.register(shutdown)

    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        pass
