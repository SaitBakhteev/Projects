from datetime import timedelta

from tortoise.models import Model
from tortoise import fields


class User(Model):
    id = fields.IntField(primary_key=True)
    tg_id = fields.BigIntField()
    created_at = fields.DatetimeField(auto_now_add=True)

    def __str__(self):
        return str(self.tg_id)


class Car(Model):
    id = fields.IntField(primary_key=True)
    user = fields.ForeignKeyField(
        "models.User", related_name="cars", on_delete=fields.CASCADE
    )
    brand = fields.CharField(max_length=255)
    model = fields.CharField(max_length=255)
    year = fields.IntField()
    engine = fields.CharField(max_length=255)
    mileage = fields.BigIntField()
    image = fields.CharField(max_length=255, null=True)


class Purchases(Model):
    id = fields.IntField(primary_key=True)
    user = fields.ForeignKeyField(
        "models.User", related_name="purchases", on_delete=fields.CASCADE
    )
    image = fields.TextField(null=True)
    text = fields.TextField(null=True)
    price = fields.DecimalField(max_digits=16, decimal_places=2, null=True)


class Notes(Model):
    id = fields.IntField(primary_key=True)
    user = fields.ForeignKeyField(
        "models.User", related_name="notes", on_delete=fields.CASCADE
    )
    created_date = fields.DatetimeField(auto_now=True)
    price = fields.DecimalField(max_digits=10, decimal_places=2, null=True)
    title = fields.CharField(max_length=255, null=True)


class Reminders(Model):
    id = fields.IntField(primary_key=True)
    user = fields.ForeignKeyField(
        "models.User", related_name="reminders", on_delete=fields.CASCADE
    )
    created_at = fields.DatetimeField(auto_now_add=True)
    total_date = fields.DateField()
    text = fields.TextField()


class Service(Model):
    id = fields.IntField(pk=True)
    car = fields.ForeignKeyField(
        "models.Car", related_name="services", on_delete=fields.CASCADE
    )
    type = fields.CharField(max_length=64)
    date = fields.DatetimeField(auto_now=True)
    next_service_date = fields.DateField(null=True)
    
    async def save(self, *args, **kwargs):
        if not self.next_service_date:
            self.next_service_date = (self.date + timedelta(days=240)).date()
        await super().save(*args, **kwargs)
