from django.conf.urls import patterns, url
from .views import SectorDetalleViewSpanish


urlpatterns = patterns('',

	url(r'^(?P<slug>[^\.]+)$', 'apps.sectores.views.SectorDetalleViewSpanish', name='sector_detalle'),

)