from django.db import models

# Create your models here.

class TextServices(models.Model):

	content = models.TextField()

	class Meta:
		verbose_name_plural = "Text Service"

	def __unicode__(self):
		return self.content

class TextServicesSpanish(models.Model):

	content = models.TextField(help_text="Write Content in Spanish")

	class Meta:
		verbose_name_plural = "Text Service (ES)"

	def __unicode__(self):
		return self.content

class TextProjects(models.Model):

	content = models.TextField()

	class Meta:
		verbose_name_plural = "Text Project"

	def __unicode__(self):
		return self.content

class TextProjectsSpanish(models.Model):

	content = models.TextField(help_text="Write Content in Spanish")

	class Meta:
		verbose_name_plural = "Text Project (ES)"

	def __unicode__(self):
		return self.content


