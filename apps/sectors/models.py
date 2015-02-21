from django.db import models
from django.template.defaultfilters import slugify

# Create your models here.

class Sector(models.Model):

	name = models.CharField(max_length=100)
	slug = models.SlugField(max_length=250, editable=False, unique=True, db_index=True)
	description = models.TextField()
	image = models.ImageField(upload_to="sectors", null=False, blank=True)

	def __unicode__(self):
		return self.name
	
	def save(self, *args, **kwargs):
		if not self.id:
			self.slug = slugify(self.name)
		super(Sector, self).save(*args, **kwargs)
		try:
			ping_google()
		except Exception:
			pass

class SectorSpanish(models.Model):

	name = models.CharField(max_length=100, help_text="Write Name in Spanish")
	slug = models.SlugField(max_length=250, editable=False, unique=True, db_index=True)
	description = models.TextField(help_text="Write Name in Spanish")
	image = models.ImageField(upload_to="sectores", null=False, blank=True)

	class Meta:
		verbose_name_plural = "Sectors (ES)"

	def __unicode__(self):
		return self.name
	
	def save(self, *args, **kwargs):
		if not self.id:
			self.slug = slugify(self.name)
		super(SectorSpanish, self).save(*args, **kwargs)
		try:
			ping_google()
		except Exception:
			pass	


