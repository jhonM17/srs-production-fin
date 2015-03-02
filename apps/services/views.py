from django.shortcuts import render_to_response
from django.views.generic import TemplateView
from django.template import RequestContext
from apps.sectors.models import Sector
from apps.services.models import Service
from apps.licenses.models import License, Entity
from apps.certifications.models import Institution, Certification
from apps.awards.models import Award
from apps.home.models import TextServices

# Create your views here.
class ServicesView(TemplateView):
	
	template_name = "services.html"

def ServicesView(request):
	sectors = Sector.objects.all()
	services = Service.objects.all()
	licenses = License.objects.all()
	entities = Entity.objects.all()
	certifications = Certification.objects.all()
	institutions = Institution.objects.all()
	awards = Award.objects.all()
	text_services = TextServices.objects.all()
	return render_to_response('services.html',{'sectors': sectors,'services':services, 'licenses': licenses, 'entities': entities, 'certifications': certifications, 'institutions': institutions , 'awards':awards, 'text_services':text_services}, context_instance=RequestContext(request))