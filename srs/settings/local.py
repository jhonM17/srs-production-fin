from .base import *

DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []

TEMPLATE_DIRS = [BASE_DIR.child('templates')]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'srsdb',
        'USER': 'jhonazsh',
        'PASSWORD': 'medina11',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

MEDIA_URL = 'http://localhost:8000/media/'
MEDIA_ROOT = BASE_DIR.child('media')

STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR.child('static')]
STATIC_ROOT = "staticfiles"


