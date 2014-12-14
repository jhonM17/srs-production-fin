# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Proyecto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre_proyecto', models.CharField(max_length=45)),
                ('contenido_proyecto', models.TextField(max_length=200)),
                ('imagen', models.ImageField(upload_to=b'media', blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
