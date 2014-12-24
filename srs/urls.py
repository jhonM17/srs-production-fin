from django.conf.urls import patterns, include, url
from django.contrib import admin

from django.conf import settings

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'srs.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),

    url(r'^', include('apps.home.urls')),
    url(r'^sectors/', include('apps.sectors.urls')),
    url(r'^es/sectores/', include('apps.sectores.urls')),
    url(r'^services/', include('apps.services.urls')),
    url(r'^es/servicios/', include('apps.servicios.urls')),

    url(r'^es/', include('apps.inicio.urls')),

)

if settings.DEBUG:
    urlpatterns += patterns('',
        (r'^media/(?P<path>.*)$', 'django.views.static.serve', {
        'document_root': settings.MEDIA_ROOT}))

if not settings.DEBUG:
    urlpatterns += patterns('',
        url(r'^static3/(?P<path>.*)$', 'django.views.static.serve',
            {'document_root': settings.STATIC_ROOT}),
    )
