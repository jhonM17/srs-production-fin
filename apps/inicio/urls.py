from django.conf.urls import patterns, include, url
from .views import InicioView, GroupViewSpanish, ExpertiseViewSpanish, ContactUsViewSpanish, CareersViewSpanish, GetMemberViewSpanish, SendingCareersViewSpanish, SendingContactUsViewSpanish

urlpatterns = patterns('',
    url(r'^$', 'apps.inicio.views.InicioView', name='inicio'),
    url(r'^grupo/$', GroupViewSpanish.as_view(), name='grupo'),
    url(r'^expertos/$', 'apps.inicio.views.ExpertiseViewSpanish', name='expertos'),
    url(r'^contactanos/$', ContactUsViewSpanish.as_view(), name='contactanos'),
    url(r'^carreras/$', CareersViewSpanish.as_view(), name='carreras'),
    url(r'^miembros/$', GetMemberViewSpanish.as_view(), name='obtener_miembros'),
    url(r'^send-careers-email-spanish/$', SendingCareersViewSpanish.as_view(), name='send_careers_spanish'),
    url(r'^send-contact-us-email-spanish/$', SendingContactUsViewSpanish.as_view(), name='send_contact_us_spanish'),

    
    
)