# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import multiselectfield.db.fields


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0007_entity_type_entity'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entity',
            name='type_entity',
            field=multiselectfield.db.fields.MultiSelectField(max_length=3, choices=[(b'License List', b'License List'), (b'Certification List', b'Certification List')]),
            preserve_default=True,
        ),
    ]
