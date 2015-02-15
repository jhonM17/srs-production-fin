# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0005_auto_20141229_1055'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='entity',
            name='licenses',
        ),
        migrations.RemoveField(
            model_name='entityspanish',
            name='licenses',
        ),
        migrations.AddField(
            model_name='license',
            name='entity',
            field=models.ForeignKey(default=1, to='licenses.Entity'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='licensespanish',
            name='entity_spanish',
            field=models.ForeignKey(default=1, to='licenses.EntitySpanish'),
            preserve_default=False,
        ),
    ]
