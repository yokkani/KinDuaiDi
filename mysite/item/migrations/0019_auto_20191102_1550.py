# Generated by Django 2.2.6 on 2019-11-02 08:50

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('item', '0018_auto_20191102_0101'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='create_date',
            field=models.DateTimeField(default=datetime.datetime(2019, 11, 2, 15, 50, 7, 781515), editable=False),
        ),
    ]
