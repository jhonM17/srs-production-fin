from django.db import models

# Create your models here.

class Servicio(models.Model):
	nombre_servicio = models.CharField(max_length=100)

	def __unicode__(self):
		return self.nombre_servicio
	
