# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0005_auto_20141229_1055'),
    ]

    operations = [
        migrations.RenameField(
            model_name='project',
            old_name='name',
            new_name='project_name',
        ),
        migrations.RenameField(
            model_name='projectspanish',
            old_name='name',
            new_name='project_name',
        ),
        migrations.RemoveField(
            model_name='project',
            name='construction_period',
        ),
        migrations.RemoveField(
            model_name='project',
            name='total_value',
        ),
        migrations.RemoveField(
            model_name='projectspanish',
            name='construction_period',
        ),
        migrations.RemoveField(
            model_name='projectspanish',
            name='total_value',
        ),
        migrations.AddField(
            model_name='project',
            name='client_name',
            field=models.CharField(default=1, max_length=200, verbose_name=b'Client Name / Company'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='projectspanish',
            name='client_name',
            field=models.CharField(default=1, help_text=b'Write Client Name / Company in Spanish', max_length=200, verbose_name=b'Client Name / Company'),
            preserve_default=False,
        ),
    ]
