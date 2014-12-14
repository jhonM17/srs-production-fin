from django.db import models

# Create your models here.

class Award(models.Model):

	titulo = models.CharField(max_length=200)
	imagen = models.ImageField(upload_to="awards", null=False, blank=True)

	def __unicode__(self):
		return self.titulo
