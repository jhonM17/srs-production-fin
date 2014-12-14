from django.db import models

# Create your models here.

class TextoServicios(models.Model):

	contenido = models.TextField()

	def __unicode__(self):
		return self.contenido

class TextoProyectos(models.Model):

	contenido = models.TextField()

	def __unicode__(self):
		return self.contenido


