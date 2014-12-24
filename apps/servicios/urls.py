from django.conf.urls import patterns, include, url
from .views import ServicesViewSpanish

urlpatterns = patterns('',
    url(r'^$', 'apps.servicios.views.ServicesViewSpanish', name='services_spanish'),
)