# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='TextProjectsSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('content', models.TextField(help_text=b'Write Content in Spanish')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='TextServicesSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('content', models.TextField(help_text=b'Write Content in Spanish')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RenameModel(
            old_name='TextoServicios',
            new_name='TextProjects',
        ),
        migrations.RenameModel(
            old_name='TextoProyectos',
            new_name='TextServices',
        ),
        migrations.RenameField(
            model_name='textprojects',
            old_name='contenido',
            new_name='content',
        ),
        migrations.RenameField(
            model_name='textservices',
            old_name='contenido',
            new_name='content',
        ),
    ]
