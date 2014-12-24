from django.shortcuts import render_to_response
from django.views.generic import DetailView
from apps.sectors.models import SectorSpanish
from apps.projects.models import ProjectSpanish
from django.template import RequestContext

# Create your views here.

def SectorDetalleViewSpanish(request, slug):
	projects = ProjectSpanish.objects.all()
	sectors = SectorSpanish.objects.all()

	slugTrue = slug.split('/')[0]
	s = SectorSpanish.objects.filter(slug=slugTrue)

	return render_to_response('sector_detalle.html',{'projects':projects,'sector':s}, context_instance=RequestContext(request))
