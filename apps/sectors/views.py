from django.shortcuts import render_to_response
from django.views.generic import DetailView
from .models import Sector
from apps.projects.models import Project
from django.template import RequestContext

# Create your views here.

def SectorDetalleView(request, slug):
	projects = Project.objects.all()
	sectors = Sector.objects.all()

	slugTrue = slug.split('/')[0]
	s = Sector.objects.filter(slug=slugTrue)

	return render_to_response('sector_detail.html',{'projects': projects,'sector':s}, context_instance=RequestContext(request))

