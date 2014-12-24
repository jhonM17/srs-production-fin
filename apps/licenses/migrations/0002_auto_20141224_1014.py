# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('licenses', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Entity',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name_entity', models.CharField(max_length=100)),
                ('image', models.ImageField(upload_to=b'entities', blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='EntitySpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name_entity', models.CharField(help_text=b'Write Name Entity in Spanish', max_length=100)),
                ('image', models.ImageField(upload_to=b'entidades', blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='LicensesSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('number', models.CharField(help_text=b'Write N\xc3\xbamero in Spanish', max_length=20)),
                ('title', models.CharField(help_text=b'Write T\xc3\xadtulo in Spanish', max_length=200)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RenameModel(
            old_name='Licencia',
            new_name='Licenses',
        ),
        migrations.RemoveField(
            model_name='entidad',
            name='licencias',
        ),
        migrations.DeleteModel(
            name='Entidad',
        ),
        migrations.AddField(
            model_name='entityspanish',
            name='licenses',
            field=models.ManyToManyField(to='licenses.LicensesSpanish'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='entity',
            name='licenses',
            field=models.ManyToManyField(to='licenses.Licenses'),
            preserve_default=True,
        ),
        migrations.RenameField(
            model_name='licenses',
            old_name='numero',
            new_name='number',
        ),
        migrations.RenameField(
            model_name='licenses',
            old_name='titulo',
            new_name='title',
        ),
    ]
