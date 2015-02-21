# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0006_auto_20141229_1055'),
    ]

    operations = [
        migrations.AddField(
            model_name='sector',
            name='image',
            field=models.ImageField(upload_to=b'sectors', blank=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='sectorspanish',
            name='image',
            field=models.ImageField(upload_to=b'sectores', blank=True),
            preserve_default=True,
        ),
    ]
