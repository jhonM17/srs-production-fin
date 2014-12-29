# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0002_auto_20141224_1014'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='servicespanish',
            options={'verbose_name_plural': 'Services (ES)'},
        ),
    ]
