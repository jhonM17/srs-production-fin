# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0008_auto_20150302_1222'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entity',
            name='type_entity',
            field=multiselectfield.db.fields.MultiSelectField(max_length=3, choices=[(1, b'License List'), (2, b'Certification List')]),
            preserve_default=True,
        ),
    ]
