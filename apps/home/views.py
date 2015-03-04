
from django.conf import settings
from django.shortcuts import render_to_response
from django.views.generic import TemplateView, ListView
from django.template import RequestContext
from apps.projects.models import Project
from apps.sectors.models import Sector
from apps.services.models import Service
from apps.team.models import Member
from .models import TextServices, TextProjects
from django.http import HttpResponse
from django.core.mail import send_mail



# Create your views here.

def HomeView(request):
	
	plen = len(Project.objects.all())
	mulplen = plen%4

	if mulplen==0 :
		projects = Project.objects.all()

	else:
		mul = plen-mulplen
		projects = Project.objects.all()[:mul]

	sectors = Sector.objects.all()
	p=Project.objects.all()[:4]
	return render_to_response('index.html',{'projects': projects,'sectors':sectors, 'p':p}, context_instance=RequestContext(request))

class GroupView(ListView):

	template_name = 'group.html'
	model = Member
	context_object_name = 'members'

def ExpertiseView(request):
	text_services = TextServices.objects.all()
	text_projects = TextProjects.objects.all()
	sectors = Sector.objects.all()
	services = Service.objects.all()
	return render_to_response('expertise.html',{'text_services': text_services,'text_projects':text_projects, 'sectors': sectors, 'services': services}, context_instance=RequestContext(request))

class ContactUsView(TemplateView):

	template_name = 'contact-us.html'

class SendingContactUsView(TemplateView):

	def post(self, request, *args, **kwargs):
		interested = request.POST['interested']
		name = request.POST['name']
		#lastname = request.POST['lastname']
		email = request.POST['email']
		telephone = request.POST['telephone']
		company = request.POST['company']
		message = request.POST['message']

		send_mail(
			interested, 
			'Name: '+name+'\nCompany: '+company+'\nEmail: '+email+'\nPhone: '+telephone+'\nMessage: '+message, 
			email,[settings.EMAIL_HOST_USER], 
			fail_silently=False)

		return HttpResponse("Your message has been sent!")

class CareersView(TemplateView):

	template_name = 'careers.html'

class SendingCareersView(TemplateView):

	def post(self, request, *args, **kwargs):
		name = request.POST['name']
		lastname = request.POST['lastname']
		address = request.POST['address']
		email = request.POST['email']
		telephone = request.POST['telephone']

		send_mail(
			'hola careers', 
			'Name: '+name+'\nLastname: '+lastname+'\nAddress: '+address, email, [settings.EMAIL_HOST_USER], 
			fail_silently=False)

		return HttpResponse("Your message has been sent!")
		
from django.core import serializers

class GetMemberView(TemplateView):

	def get(self, request, *args, **kwargs):
		id_member = request.GET['id']
		member = Member.objects.filter(id=id_member)
		data = serializers.serialize('json', member)

		return HttpResponse(data, content_type='application/json')


