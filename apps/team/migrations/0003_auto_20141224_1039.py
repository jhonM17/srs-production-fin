# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0002_memberspanish'),
    ]

    operations = [
        migrations.AlterField(
            model_name='memberspanish',
            name='image',
            field=models.ImageField(upload_to=b'equipo', blank=True),
            preserve_default=True,
        ),
    ]
