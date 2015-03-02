from django.db import models

# Create your models here.
class Institution(models.Model):

	name_institution = models.CharField(max_length=100)
	image = models.ImageField(upload_to="institutions", null=False, blank=True)

	class Meta:
		verbose_name_plural = "Institutions"

	def __unicode__(self):
		return self.name_institution

class Certification(models.Model):

	title = models.CharField(max_length=200)
	institution = models.ForeignKey(Institution)

	class Meta:
		verbose_name_plural = "Certifications"

	def __unicode__(self):
		return self.title