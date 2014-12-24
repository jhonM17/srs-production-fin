# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sectors', '0002_auto_20141223_1758'),
    ]

    operations = [
        migrations.CreateModel(
            name='SectorSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(help_text=b'write name in spanish', max_length=100)),
                ('slug', models.SlugField(unique=True, max_length=250, editable=False)),
                ('description', models.TextField(help_text=b'write description in spanish')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
