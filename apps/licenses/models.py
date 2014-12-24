# -*- coding: UTF-8 -*-
from django.db import models

# Create your models here.

class License(models.Model):

	number = models.CharField(max_length=20)
	title = models.CharField(max_length=200)

	def __unicode__(self):
		return self.title

class LicenseSpanish(models.Model):

	number = models.CharField(max_length=20, help_text="Write Número in Spanish")
	title = models.CharField(max_length=200, help_text="Write Título in Spanish")

	def __unicode__(self):
		return self.title

class Entity(models.Model):

	name_entity = models.CharField(max_length=100)
	image = models.ImageField(upload_to="entities", null=False, blank=True)
	licenses = models.ManyToManyField(License)

	def __unicode__(self):
		return self.name_entity

class EntitySpanish(models.Model):

	name_entity = models.CharField(max_length=100, help_text="Write Name Entity in Spanish")
	image = models.ImageField(upload_to="entidades", null=False, blank=True)
	licenses = models.ManyToManyField(LicenseSpanish)

	def __unicode__(self):
		return self.name_entity
