# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Sector',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('nombre_sector', models.CharField(max_length=100)),
                ('slug', models.SlugField(unique=True, max_length=250, editable=False)),
                ('descripcion', models.TextField()),
                ('proyectos', models.ManyToManyField(to='projects.Proyecto')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
