from django.db import models
from apps.sectors.models import Sector

# Create your models here.

class Proyecto(models.Model):
	nombre_proyecto = models.CharField(max_length=45)
	contenido_proyecto = models.TextField(max_length=200)
	imagen = models.ImageField(upload_to="media", null=False, blank=True)
	sector = models.ForeignKey(Sector)

	def __unicode__(self):
		return self.nombre_proyecto

