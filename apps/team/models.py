from django.db import models

# Create your models here.

class RedSocial(models.Model):

	red = models.CharField(max_length=100)

	def __unicode__(self):
		return self.red

class Miembro(models.Model):

	nombre = models.CharField(max_length=45)
	cargo = models.CharField(max_length=45)
	bio = models.TextField()
	imagen = models.ImageField(upload_to="team", null=False, blank=True)
	redes_sociales = models.ManyToManyField(RedSocial)

	def __unicode__(self):
		return self.nombre

