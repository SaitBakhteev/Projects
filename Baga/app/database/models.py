"""
Модель EventUsers. Данная модель предназначена для того, чтобы заносить в БД заявившихся участников на
определенные тренировки. Поле paid_check может принимать следующие значения:
- пустое NULL означает, что пользователь не обозначил оплату за тренировку;
- текст 'I payed' означает, что пользователь оплатил, но чек об оплате не загрузил;
- адрес чека об оплате, загруженный пользователем
"""


from tortoise.models import Model
from tortoise import fields


class User(Model):
    id = fields.IntField(primary_key=True)
    tg_id = fields.BigIntField()
    tg_username = fields.CharField(max_length=64, null=True)
    tg_name = fields.CharField(max_length=64, null=True)
    created_at = fields.DatetimeField(auto_now_add=True)
    admin_permissions = fields.BooleanField(default=False)


    def __str__(self):
        return self.tg_username


#модель для хранения данных спортзалов
class Gym(Model):
    id = fields.IntField(primary_key=True)
    info = fields.TextField()
    show_location = fields.TextField(null=True) # путь к фото- или видеофайлу, которое демонстрируцет расположение зала

    def __str__(self):
        return self.info


# класс модели для записи данных запланированных тренировок
class Event(Model):
    id = fields.IntField(primary_key=True)
    training_type = fields.CharField(max_length=64) # тип запланированной тренировки
    date = fields.DateField()  # запланированная дата
    begin = fields.TimeField()  # время начала тренировки
    end = fields.TimeField()  # время окончания тренировки
    gym = fields.ForeignKeyField('models.Gym', related_name='event', on_delete=fields.CASCADE)  # спортзал
    participants_count = fields.IntField(default=18) # число участников тренировки
    user = fields.ManyToManyField('models.User', related_name="participants", through='EventUser')

    def __str__(self):
        return f'id={self.id}; count={self.participants_count}; type={self.training_type};'


class EventUser(Model):
    id = fields.IntField(primary_key=True)
    event = fields.ForeignKeyField('models.Event', on_delete=fields.CASCADE)
    user = fields.ForeignKeyField('models.User', on_delete=fields.CASCADE)
    paid_check = fields.CharField(null=True, max_length=4) # поле оповещения пользователем боту об оплате
    created_at = fields.DatetimeField(auto_now_add=True)
    payment_confirmed = fields.BooleanField(default=None, null=True)  # подтверждение оплаты, доступное только админу


    class Meta:
        table = 'EventUser'
