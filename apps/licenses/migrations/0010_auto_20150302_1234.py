# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0009_auto_20150302_1227'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entity',
            name='type_entity',
            field=multiselectfield.db.fields.MultiSelectField(max_length=3, choices=[(b'1', b'License List'), (b'2', b'Certification List')]),
            preserve_default=True,
        ),
    ]
