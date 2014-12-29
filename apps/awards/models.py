from django.db import models

# Create your models here.

class Award(models.Model):

	title = models.CharField(max_length=200)
	image = models.ImageField(upload_to="awards", null=False, blank=True)

	def __unicode__(self):
		return self.title

class AwardSpanish(models.Model):

	title = models.CharField(max_length=200, help_text="Write Title in Spanish")
	image = models.ImageField(upload_to="premios", null=False, blank=True)

	class Meta:
		verbose_name_plural = "Awards (ES)"

	def __unicode__(self):
		return self.title
