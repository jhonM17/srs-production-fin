# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0002_projectspanish'),
    ]

    operations = [
        migrations.AlterField(
            model_name='projectspanish',
            name='sector',
            field=models.ForeignKey(to='sectors.SectorSpanish'),
            preserve_default=True,
        ),
    ]
