# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0002_auto_20141213_1302'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sector',
            name='slug',
            field=models.SlugField(unique=True, max_length=250, editable=False),
        ),
    ]
