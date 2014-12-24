# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0002_auto_20141224_1014'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Licenses',
            new_name='License',
        ),
        migrations.RenameModel(
            old_name='LicensesSpanish',
            new_name='LicenseSpanish',
        ),
    ]
