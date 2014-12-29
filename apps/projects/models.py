from django.db import models
from apps.sectors.models import Sector
from apps.sectors.models import SectorSpanish

# Create your models here.

class Project(models.Model):
	name = models.CharField(max_length=100)
	description = models.TextField()
	image = models.ImageField(upload_to="projects", null=False, blank=True)
	location = models.CharField(max_length=100)
	total_value = models.CharField(max_length=45)
	construction_period = models.CharField(max_length=45)
	sector = models.ForeignKey(Sector)

	def __unicode__(self):
		return self.name

class ProjectSpanish(models.Model):
	name = models.CharField(max_length=100, help_text="Write Name in Spanish")
	description = models.TextField(help_text="Write Description in Spanish")
	image = models.ImageField(upload_to="proyectos", null=False, blank=True)
	location = models.CharField(max_length=100, help_text="Write Location in Spanish")
	total_value = models.CharField(max_length=45, help_text="Write Total Value in Spanish")
	construction_period = models.CharField(max_length=45, help_text="Write Construction Period in Spanish")
	sector = models.ForeignKey(SectorSpanish)

	class Meta:
		verbose_name_plural = "Projects (ES)"

	def __unicode__(self):
		return self.name

