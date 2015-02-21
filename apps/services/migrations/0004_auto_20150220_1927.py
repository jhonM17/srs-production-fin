# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('services', '0003_auto_20141229_1055'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='description',
            field=models.TextField(default=1),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='servicespanish',
            name='description',
            field=models.TextField(default=1, help_text=b'Write Description in Spanish'),
            preserve_default=False,
        ),
    ]
