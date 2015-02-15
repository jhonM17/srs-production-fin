# -*- coding: UTF-8 -*-
from django.db import models

# Create your models here.
class Entity(models.Model):

	name_entity = models.CharField(max_length=100)
	image = models.ImageField(upload_to="entities", null=False, blank=True)

	class Meta:
		verbose_name_plural = "Entities"

	def __unicode__(self):
		return self.name_entity


class EntitySpanish(models.Model):

	name_entity = models.CharField(max_length=100, help_text="Write Name Entity in Spanish")
	image = models.ImageField(upload_to="entidades", null=False, blank=True)

	class Meta:
		verbose_name_plural = "Entities (ES)"

	def __unicode__(self):
		return self.name_entity

class License(models.Model):

	number = models.CharField(max_length=20)
	title = models.CharField(max_length=200)
	entity = models.ForeignKey(Entity)

	def __unicode__(self):
		return self.title

class LicenseSpanish(models.Model):

	number = models.CharField(max_length=20, help_text="Write Número in Spanish")
	title = models.CharField(max_length=200, help_text="Write Título in Spanish")
	entity_spanish = models.ForeignKey(EntitySpanish)

	class Meta:
		verbose_name_plural = "Licenses (ES)"

	def __unicode__(self):
		return self.title


