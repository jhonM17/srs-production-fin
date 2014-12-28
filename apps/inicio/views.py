#from django.conf import settings
from django.shortcuts import render_to_response
from django.views.generic import TemplateView, ListView
from django.template import RequestContext
from apps.projects.models import ProjectSpanish
from apps.sectors.models import SectorSpanish
from apps.team.models import MemberSpanish
from apps.home.models import TextServicesSpanish, TextProjectsSpanish
from django.http import HttpResponse
#from django.core.mail import send_mail

# Create your views here.

def InicioView(request):
	projects = ProjectSpanish.objects.all()
	sectors = SectorSpanish.objects.all()
	return render_to_response('inicio.html',{'projects': projects,'sectors':sectors}, context_instance=RequestContext(request))

class GroupViewSpanish(ListView):

	template_name = 'grupo.html'
	model = MemberSpanish
	context_object_name = 'members'

def ExpertiseViewSpanish(request):
	text_services = TextServicesSpanish.objects.all()
	text_projects = TextProjectsSpanish.objects.all()
	projects = ProjectSpanish.objects.all()
	return render_to_response('expertos.html',{'text_services': text_services,'text_projects':text_projects, 'projects': projects}, context_instance=RequestContext(request))

class ContactUsViewSpanish(TemplateView):

	template_name = 'contactanos.html'

class CareersViewSpanish(TemplateView):

	template_name = 'carreras.html'


from django.core import serializers

class GetMemberViewSpanish(TemplateView):

	def get(self, request, *args, **kwargs):
		id_miembro = request.GET['id']
		miembro = MemberSpanish.objects.filter(id=id_miembro)
		print miembro[0].bio
		data = serializers.serialize('json', miembro)

		return HttpResponse(data, content_type='application/json')
