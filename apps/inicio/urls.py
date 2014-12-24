from django.conf.urls import patterns, include, url
from .views import InicioView, GroupViewSpanish, ExpertiseViewSpanish, ContactUsViewSpanish, CareersViewSpanish

urlpatterns = patterns('',
    url(r'^$', 'apps.inicio.views.InicioView', name='inicio'),
    url(r'^grupo/$', GroupViewSpanish.as_view(), name='grupo'),
    url(r'^expertos/$', 'apps.inicio.views.ExpertiseViewSpanish', name='expertos'),
    url(r'^contactanos/$', ContactUsViewSpanish.as_view(), name='contactanos'),
    url(r'^carreras/$', CareersViewSpanish.as_view(), name='carreras'),
    
)