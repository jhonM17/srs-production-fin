from django.db import models

# Create your models hereT

class Member(models.Model):

	name = models.CharField(max_length=45)
	office = models.CharField(max_length=45)
	bio = models.TextField()
	image = models.ImageField(upload_to="team", null=False, blank=True)
	facebook = models.CharField(max_length=100, blank=True)
	twitter = models.CharField(max_length=100, blank=True)
	google = models.CharField(max_length=100, blank=True)

	def __unicode__(self):
		return self.name
		

