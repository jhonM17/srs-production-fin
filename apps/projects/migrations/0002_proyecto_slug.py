# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='proyecto',
            name='slug',
            field=models.SlugField(default=1, unique=True, max_length=250, editable=False),
            preserve_default=False,
        ),
    ]
