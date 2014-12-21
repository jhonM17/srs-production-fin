# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Project',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100)),
                ('description', models.TextField()),
                ('image', models.ImageField(upload_to=b'media', blank=True)),
                ('location', models.CharField(max_length=100)),
                ('total_value', models.CharField(max_length=45)),
                ('construction_period', models.CharField(max_length=45)),
                ('sector', models.ForeignKey(to='sectors.Sector')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
