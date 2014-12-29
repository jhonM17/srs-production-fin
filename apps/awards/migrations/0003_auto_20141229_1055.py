# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('awards', '0002_auto_20141224_1021'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='awardspanish',
            options={'verbose_name_plural': 'Awards (ES)'},
        ),
    ]
