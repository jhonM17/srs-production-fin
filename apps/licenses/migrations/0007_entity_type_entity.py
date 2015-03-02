# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0006_auto_20150215_1739'),
    ]

    operations = [
        migrations.AddField(
            model_name='entity',
            name='type_entity',
            field=multiselectfield.db.fields.MultiSelectField(default=1, max_length=3, choices=[(1, b'License List'), (2, b'Certification List')]),
            preserve_default=False,
        ),
    ]
