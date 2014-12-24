from django.db import models

# Create your models here.

class Service(models.Model):
	name = models.CharField(max_length=100)

	def __unicode__(self):
		return self.name

class ServiceSpanish(models.Model):
	name = models.CharField(max_length=100, help_text="Write Name in Spanish")

	def __unicode__(self):
		return self.name
	
