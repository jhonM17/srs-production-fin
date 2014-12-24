# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='sector',
            old_name='descripcion',
            new_name='description',
        ),
        migrations.RenameField(
            model_name='sector',
            old_name='nombre_sector',
            new_name='name',
        ),
    ]
