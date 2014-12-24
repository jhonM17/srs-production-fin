from django.conf.urls import patterns, url
from .views import SectorDetalleView


urlpatterns = patterns('',

	url(r'^(?P<slug>[^\.]+)$', 'apps.sectors.views.SectorDetalleView', name='sector_detalle'),

)