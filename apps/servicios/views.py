from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.template import RequestContext
from apps.sectors.models import SectorSpanish
from apps.services.models import Servicio
from apps.licenses.models import Entidad
from apps.awards.models import Award
from apps.home.models import TextServices

def ServicesView(request):
	sectors = Sector.objects.all()
	servicios = Servicio.objects.all()
	e_licencias = Entidad.objects.all()
	awards = Award.objects.all()
	text_services = TextServices.objects.all()
	return render_to_response('services.html',{'sectors': sectors,'servicios':servicios, 'e_licencias': e_licencias, 'awards':awards, 'text_services':text_services}, context_instance=RequestContext(request))