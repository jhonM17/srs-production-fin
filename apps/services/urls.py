from django.conf.urls import patterns, include, url
from .views import ServicesView

urlpatterns = patterns('',
    url(r'^$', 'apps.services.views.ServicesView', name='services'),
)