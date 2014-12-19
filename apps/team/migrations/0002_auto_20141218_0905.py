# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('team', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Member',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre', models.CharField(max_length=45)),
                ('cargo', models.CharField(max_length=45)),
                ('bio', models.TextField()),
                ('imagen', models.ImageField(upload_to=b'team', blank=True)),
                ('facebook', models.CharField(max_length=100, blank=True)),
                ('twitter', models.CharField(max_length=100, blank=True)),
                ('google', models.CharField(max_length=100, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RemoveField(
            model_name='miembro',
            name='redes_sociales',
        ),
        migrations.DeleteModel(
            name='Miembro',
        ),
        migrations.DeleteModel(
            name='RedSocial',
        ),
    ]
