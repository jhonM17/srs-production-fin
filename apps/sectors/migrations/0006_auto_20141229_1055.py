# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0005_sectorspanish'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='sectorspanish',
            options={'verbose_name_plural': 'Sectors (ES)'},
        ),
    ]
