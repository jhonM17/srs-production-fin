# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='MemberSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(help_text=b'Write Name in Spanish', max_length=45)),
                ('office', models.CharField(help_text=b'Write Office in Spanish', max_length=45)),
                ('bio', models.TextField(help_text=b'Write Bio in Spanish')),
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
