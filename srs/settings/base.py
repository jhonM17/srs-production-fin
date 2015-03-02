EMAIL_USE_TLS = True
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = "jhonazsh.17@gmail.com"
EMAIL_HOST_PASSWORD = "octubre6"
EMAIL_PORT = 587

from django.conf.global_settings import TEMPLATE_CONTEXT_PROCESSORS as TCP
from unipath import Path
BASE_DIR = Path(__file__).ancestor(3)

SECRET_KEY = '4b&f#3f0le-+u(c8u6+n!pe@6vp)&nbh!pj+8#_e8b=vs$gb-u'

DJANGO_APPS = (
            'suit',
            'django.contrib.admin',
            'django.contrib.auth',
            'django.contrib.contenttypes',
            'django.contrib.sessions',
            'django.contrib.messages',
            'django.contrib.staticfiles',

        )

THIRD_PARTY_APPS = (
            
        )

LOCAL_APPS = (
            'apps.home',
            'apps.inicio',
            'apps.projects',
            'apps.services',
            'apps.servicios',
            'apps.sectors',
            'apps.sectores',
            'apps.team',
            'apps.licenses',
            'apps.awards',
            'apps.certifications',
        )

INSTALLED_APPS = DJANGO_APPS + THIRD_PARTY_APPS + LOCAL_APPS

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)


ROOT_URLCONF = 'srs.urls'

WSGI_APPLICATION = 'srs.wsgi.application'

#django-suit
TEMPLATE_CONTEXT_PROCESSORS = TCP + (
    'django.core.context_processors.request',
)

SUIT_CONFIG = {
    'ADMIN_NAME': 'SRS Admin'
}

