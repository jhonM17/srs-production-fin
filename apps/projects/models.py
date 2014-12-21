from django.db import models
from apps.sectors.models import Sector

# Create your models here.

class Project(models.Model):
	name = models.CharField(max_length=100)
	description = models.TextField()
	image = models.ImageField(upload_to="media", null=False, blank=True)
	location = models.CharField(max_length=100)
	total_value = models.CharField(max_length=45)
	construction_period = models.CharField(max_length=45)
	sector = models.ForeignKey(Sector)

	def __unicode__(self):
		return self.name

