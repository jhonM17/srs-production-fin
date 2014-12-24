# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0003_auto_20141224_0142'),
    ]

    operations = [
        migrations.AlterField(
            model_name='project',
            name='image',
            field=models.ImageField(upload_to=b'projects', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='projectspanish',
            name='image',
            field=models.ImageField(upload_to=b'proyectos', blank=True),
            preserve_default=True,
        ),
    ]
