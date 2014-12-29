# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0003_auto_20141224_1039'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='memberspanish',
            options={'verbose_name_plural': 'Members (ES)'},
        ),
        migrations.RemoveField(
            model_name='memberspanish',
            name='facebook',
        ),
        migrations.RemoveField(
            model_name='memberspanish',
            name='google',
        ),
        migrations.RemoveField(
            model_name='memberspanish',
            name='twitter',
        ),
    ]
