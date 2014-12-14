from django.shortcuts import render_to_response
from django.views.generic import DetailView
from .models import Sector
from apps.projects.models import Proyecto
from django.template import RequestContext

# Create your views here.

def SectorDetalleView(request, slug):
	proyectos = Proyecto.objects.all()
	sectores = Sector.objects.all()

	slugTrue = slug.split('/')[0]
	s = Sector.objects.filter(slug=slugTrue)

	return render_to_response('sector_detalle.html',{'proyectos': proyectos,'sector':s}, context_instance=RequestContext(request))

