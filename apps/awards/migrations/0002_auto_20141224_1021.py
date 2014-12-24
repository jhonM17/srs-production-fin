# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('awards', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='AwardSpanish',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(help_text=b'Write Title in Spanish', max_length=200)),
                ('image', models.ImageField(upload_to=b'premios', blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RenameField(
            model_name='award',
            old_name='imagen',
            new_name='image',
        ),
        migrations.RenameField(
            model_name='award',
            old_name='titulo',
            new_name='title',
        ),
    ]
