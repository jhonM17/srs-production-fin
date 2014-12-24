from django.db import models

# Create your models here.

class TextServices(models.Model):

	content = models.TextField()

	def __unicode__(self):
		return self.content

class TextServicesSpanish(models.Model):

	content = models.TextField(help_text="Write Content in Spanish")

	def __unicode__(self):
		return self.content

class TextProjects(models.Model):

	content = models.TextField()

	def __unicode__(self):
		return self.content

class TextProjectsSpanish(models.Model):

	content = models.TextField(help_text="Write Content in Spanish")

	def __unicode__(self):
		return self.content


