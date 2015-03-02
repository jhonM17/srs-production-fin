# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0011_auto_20150302_1324'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='entity',
            name='type_entity',
        ),
    ]
