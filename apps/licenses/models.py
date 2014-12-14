from django.db import models

# Create your models here.

class Licencia(models.Model):

	numero = models.CharField(max_length=20)
	titulo = models.CharField(max_length=200)

	def __unicode__(self):
		return self.titulo

class Entidad(models.Model):

	nombre_entidad = models.CharField(max_length=100)
	imagen = models.ImageField(upload_to="entidades", null=False, blank=True)
	licencias = models.ManyToManyField(Licencia)

	def __unicode__(self):
		return self.nombre_entidad
