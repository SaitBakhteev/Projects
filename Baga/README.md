Для запуска проекта, нужно последовательно ввести следующие команды:
```
1. pip install -r req requirements.txt.  
2. Далее команды для коннекта с БД:
   -> aerich init -t config.TORTOISE_ORM
   -> aerich init-db
   -> aerich migrate
   -> aerich upgrade
```
