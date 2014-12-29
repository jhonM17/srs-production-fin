# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0003_auto_20141224_1028'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='entity',
            options={'verbose_name_plural': 'Entities'},
        ),
    ]
