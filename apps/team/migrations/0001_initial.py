# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Member',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=45)),
                ('office', models.CharField(max_length=45)),
                ('bio', models.TextField()),
                ('image', models.ImageField(upload_to=b'team', blank=True)),
                ('facebook', models.CharField(max_length=100, blank=True)),
                ('twitter', models.CharField(max_length=100, blank=True)),
                ('google', models.CharField(max_length=100, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
