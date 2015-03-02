# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Certification',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200)),
            ],
            options={
                'verbose_name_plural': 'Certifications',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Institution',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name_institution', models.CharField(max_length=100)),
                ('image', models.ImageField(upload_to=b'institutions', blank=True)),
            ],
            options={
                'verbose_name_plural': 'Institutions',
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='certification',
            name='institution',
            field=models.ForeignKey(to='certifications.Institution'),
            preserve_default=True,
        ),
    ]
