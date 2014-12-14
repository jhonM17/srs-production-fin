# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0006_remove_sector_proyectos'),
        ('projects', '0007_remove_proyecto_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='proyecto',
            name='sector',
            field=models.ForeignKey(default=1, to='sectors.Sector'),
            preserve_default=False,
        ),
    ]
