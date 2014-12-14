# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0003_auto_20141213_1336'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sector',
            name='slug',
            field=models.SlugField(max_length=250, editable=False),
        ),
    ]
