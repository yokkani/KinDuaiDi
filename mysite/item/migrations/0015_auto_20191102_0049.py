# Generated by Django 2.2.6 on 2019-11-01 17:49

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('item', '0014_auto_20191102_0048'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='create_date',
            field=models.DateTimeField(default=datetime.datetime(2019, 11, 2, 0, 49, 46, 498438), editable=False),
        ),
    ]
