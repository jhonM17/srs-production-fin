from django.db import models
from django.template.defaultfilters import slugify

# Create your models here.

class Sector(models.Model):

	nombre_sector = models.CharField(max_length=100)
	slug = models.SlugField(max_length=250, editable=False, unique=True, db_index=True)
	descripcion = models.TextField()

	def __unicode__(self):
		return self.nombre_sector
	
	def save(self, *args, **kwargs):
		if not self.id:
			self.slug = slugify(self.nombre_sector)
		super(Sector, self).save(*args, **kwargs)
		try:
			ping_google()
		except Exception:
			pass
	


