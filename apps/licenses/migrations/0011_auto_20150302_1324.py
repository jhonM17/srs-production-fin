# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0010_auto_20150302_1234'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entity',
            name='type_entity',
            field=multiselectfield.db.fields.MultiSelectField(max_length=3, choices=[(0, b'License List'), (1, b'Certification List')]),
            preserve_default=True,
        ),
    ]
