# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0006_auto_20150220_1505'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='project_name',
            field=models.CharField(max_length=100, verbose_name=b'Project Name'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='projectspanish',
            name='project_name',
            field=models.CharField(help_text=b'Write Name in Spanish', max_length=100, verbose_name=b'Project Name'),
            preserve_default=True,
        ),
    ]
