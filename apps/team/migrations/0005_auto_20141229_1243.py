# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0004_auto_20141229_1055'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='member',
            name='facebook',
        ),
        migrations.RemoveField(
            model_name='member',
            name='google',
        ),
        migrations.RemoveField(
            model_name='member',
            name='twitter',
        ),
    ]
