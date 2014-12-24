# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0003_sectorspanish'),
    ]

    operations = [
        migrations.DeleteModel(
            name='SectorSpanish',
        ),
    ]
