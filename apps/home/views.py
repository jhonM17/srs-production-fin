from django.conf import settings
from django.shortcuts import render_to_response
from django.views.generic import TemplateView, ListView
from django.template import RequestContext
from apps.projects.models import Proyecto
from apps.sectors.models import Sector
from apps.team.models import Miembro
from .models import TextoServicios, TextoProyectos
from django.http import HttpResponse
from django.core.mail import send_mail



# Create your views here.

def HomeView(request):
	proyectos = Proyecto.objects.all()
	sectores = Sector.objects.all()
	return render_to_response('index.html',{'proyectos': proyectos,'sectores':sectores}, context_instance=RequestContext(request))

class GroupView(ListView):

	template_name = 'group.html'
	model = Miembro
	context_object_name = 'miembros'

def ExpertiseView(request):
	text_services = TextoServicios.objects.all()
	text_projects = TextoProyectos.objects.all()
	projects = Proyecto.objects.all()
	return render_to_response('expertise.html',{'text_services': text_services,'text_projects':text_projects, 'projects': projects}, context_instance=RequestContext(request))

class ContactUsView(TemplateView):

	template_name = 'contact-us.html'

class SendingContactUsView(TemplateView):

	def post(self, request, *args, **kwargs):
		interested = request.POST['interested']
		firstname = request.POST['firstname']
		lastname = request.POST['lastname']
		email = request.POST['email']
		telephone = request.POST['telephone']
		company = request.POST['company']
		address = request.POST['address']
		city = request.POST['city']
		state = request.POST['state']
		country = request.POST['country']
		how = request.POST['how']
		comments = request.POST['comments']

		send_mail(
			'hola contact-us', 
			'Name: '+firstname+'\nLastname: '+lastname+'\nAddress: '+address, 
			settings.EMAIL_HOST_USER,[email], 
			fail_silently=False)

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
			'Name: '+name+'\nLastname: '+lastname+'\nAddress: '+address, 
			settings.EMAIL_HOST_USER,[email], 
			fail_silently=False)
		

def langView(request):
	salida = _("Welcome to my site")
	return HttpResponse(salida)


