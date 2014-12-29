# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0004_auto_20141229_1032'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='entityspanish',
            options={'verbose_name_plural': 'Entities (ES)'},
        ),
        migrations.AlterModelOptions(
            name='licensespanish',
            options={'verbose_name_plural': 'Licenses (ES)'},
        ),
    ]
