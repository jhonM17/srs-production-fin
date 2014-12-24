from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.template import RequestContext
from apps.sectors.models import SectorSpanish
from apps.services.models import ServiceSpanish
from apps.licenses.models import EntitySpanish
from apps.awards.models import AwardSpanish
from apps.home.models import TextServicesSpanish

def ServicesViewSpanish(request):
	sectors = SectorSpanish.objects.all()
	services = ServiceSpanish.objects.all()
	e_licenses = EntitySpanish.objects.all()
	awards = AwardSpanish.objects.all()
	text_services = TextServicesSpanish.objects.all()
	return render_to_response('servicios.html',{'sectors': sectors,'services':services, 'e_licenses': e_licenses, 'awards':awards, 'text_services':text_services}, context_instance=RequestContext(request))