from django.db import models
from apps.sectors.models import Sector
from apps.sectors.models import SectorSpanish

# Create your models here.

class Project(models.Model):
	project_name = models.CharField(max_length=100, verbose_name="Project Name")
	client_name = models.CharField(max_length=200, verbose_name="Client Name / Company")
	location = models.CharField(max_length=100)
	description = models.TextField()
	image = models.ImageField(upload_to="projects", null=False, blank=True)
	sector = models.ForeignKey(Sector)

	def __unicode__(self):
		return self.project_name

class ProjectSpanish(models.Model):
	project_name = models.CharField(max_length=100, help_text="Write Name in Spanish", verbose_name="Project Name")
	client_name = models.CharField(
		max_length=200, 
		help_text="Write Client Name / Company in Spanish", 
		verbose_name="Client Name / Company")
	location = models.CharField(max_length=100, help_text="Write Location in Spanish")
	description = models.TextField(help_text="Write Description in Spanish")
	image = models.ImageField(upload_to="proyectos", null=False, blank=True)
	sector = models.ForeignKey(SectorSpanish)

	class Meta:
		verbose_name_plural = "Projects (ES)"

	def __unicode__(self):
		return self.project_name

