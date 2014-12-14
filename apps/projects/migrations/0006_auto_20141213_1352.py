# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0005_proyecto_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='proyecto',
            name='slug',
            field=models.SlugField(max_length=250, editable=False, db_index=False),
        ),
    ]
