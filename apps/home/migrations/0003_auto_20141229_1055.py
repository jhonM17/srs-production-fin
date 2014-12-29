# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_auto_20141224_0308'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='textprojects',
            options={'verbose_name_plural': 'Text Project'},
        ),
        migrations.AlterModelOptions(
            name='textprojectsspanish',
            options={'verbose_name_plural': 'Text Project (ES)'},
        ),
        migrations.AlterModelOptions(
            name='textservices',
            options={'verbose_name_plural': 'Text Service'},
        ),
        migrations.AlterModelOptions(
            name='textservicesspanish',
            options={'verbose_name_plural': 'Text Service (ES)'},
        ),
    ]
