from django.db import models

# Create your models here.

class Service(models.Model):
	name = models.CharField(max_length=100)
	description = models.TextField(blank=True)

	def __unicode__(self):
		return self.name

class ServiceSpanish(models.Model):
	name = models.CharField(max_length=100, help_text="Write Name in Spanish")
	description = models.TextField(help_text="Write Description in Spanish", blank=True)

	class Meta:
		verbose_name_plural = "Services (ES)"

	def __unicode__(self):
		return self.name
	
