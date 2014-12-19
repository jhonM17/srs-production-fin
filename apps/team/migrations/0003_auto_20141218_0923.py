# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0002_auto_20141218_0905'),
    ]

    operations = [
        migrations.RenameField(
            model_name='member',
            old_name='imagen',
            new_name='image',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='cargo',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='nombre',
            new_name='office',
        ),
    ]
