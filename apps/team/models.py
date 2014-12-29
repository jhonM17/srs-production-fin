from django.db import models

# Create your models hereT

class Member(models.Model):

	name = models.CharField(max_length=45)
	office = models.CharField(max_length=45)
	bio = models.TextField()
	image = models.ImageField(upload_to="team", null=False, blank=True)

	def __unicode__(self):
		return self.name
		
class MemberSpanish(models.Model):

	name = models.CharField(max_length=45, help_text="Write Name in Spanish")
	office = models.CharField(max_length=45, help_text="Write Office in Spanish")
	bio = models.TextField(help_text="Write Bio in Spanish")
	image = models.ImageField(upload_to="equipo", null=False, blank=True)

	class Meta:
		verbose_name_plural = "Members (ES)"

	def __unicode__(self):
		return self.name
		

