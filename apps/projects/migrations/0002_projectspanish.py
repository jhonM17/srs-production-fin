# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0005_sectorspanish'),
        ('projects', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProjectSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(help_text=b'Write Name in Spanish', max_length=100)),
                ('description', models.TextField(help_text=b'Write Description in Spanish')),
                ('image', models.ImageField(upload_to=b'media', blank=True)),
                ('location', models.CharField(help_text=b'Write Location in Spanish', max_length=100)),
                ('total_value', models.CharField(help_text=b'Write Total Value in Spanish', max_length=45)),
                ('construction_period', models.CharField(help_text=b'Write Construction Period in Spanish', max_length=45)),
                ('sector', models.ForeignKey(to='sectors.Sector')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
