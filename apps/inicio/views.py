 # -*- coding: utf-8 -*-
from django.conf import settings
from django.shortcuts import render_to_response
from django.views.generic import TemplateView, ListView
from django.template import RequestContext
from apps.projects.models import ProjectSpanish
from apps.sectors.models import SectorSpanish
from apps.team.models import MemberSpanish
from apps.home.models import TextServicesSpanish, TextProjectsSpanish
from django.http import HttpResponse
from django.core.mail import send_mail

# Create your views here.

def InicioView(request):
	projects = ProjectSpanish.objects.all()
	p = ProjectSpanish.objects.all()[:4]
	sectors = SectorSpanish.objects.all()
	return render_to_response('inicio.html',{'projects': projects,'sectors':sectors, 'p':p}, context_instance=RequestContext(request))

class GroupViewSpanish(ListView):

	template_name = 'grupo.html'
	model = MemberSpanish
	context_object_name = 'members'

def ExpertiseViewSpanish(request):
	text_services = TextServicesSpanish.objects.all()
	text_projects = TextProjectsSpanish.objects.all()
	sectors = SectorSpanish.objects.all()
	return render_to_response('expertos.html',{'text_services': text_services,'text_projects':text_projects, 'sectors': sectors}, context_instance=RequestContext(request))

class ContactUsViewSpanish(TemplateView):

	template_name = 'contactanos.html'

class SendingContactUsViewSpanish(TemplateView):

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
			email,[settings.EMAIL_HOST_USER], 
			fail_silently=False)

		return HttpResponse("¡Tu Mensaje ha sido enviado!")

class CareersViewSpanish(TemplateView):

	template_name = 'carreras.html'

class SendingCareersViewSpanish(TemplateView):

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

		return HttpResponse("¡Tu Mensaje ha sido enviado!")


from django.core import serializers

class GetMemberViewSpanish(TemplateView):

	def get(self, request, *args, **kwargs):
		id_miembro = request.GET['id']
		miembro = MemberSpanish.objects.filter(id=id_miembro)
		data = serializers.serialize('json', miembro)

		return HttpResponse(data, content_type='application/json')
