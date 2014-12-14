from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.template import RequestContext
from apps.sectors.models import Sector
from apps.services.models import Servicio
from apps.licenses.models import Entidad
from apps.awards.models import Award
from apps.home.models import TextoServicios

# Create your views here.
class ServicesView(TemplateView):
	
	template_name = "services.html"

def ServicesView(request):
	sectores = Sector.objects.all()
	servicios = Servicio.objects.all()
	e_licencias = Entidad.objects.all()
	awards = Award.objects.all()
	text_services = TextoServicios.objects.all()
	return render_to_response('services.html',{'sectores': sectores,'servicios':servicios, 'e_licencias': e_licencias, 'awards':awards, 'text_services':text_services}, context_instance=RequestContext(request))