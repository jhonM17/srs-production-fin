
from .base import *

DEBUG = False

TEMPLATE_DEBUG = False

ALLOWED_HOSTS = ['*']

TEMPLATE_DIRS = [BASE_DIR.child('templates')]

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'srsdb',
        'USER': 'srs',
        'PASSWORD': 'srsdic3fin',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
STATIC_URL = 'http://pyracabados.com/static3/'
STATIC_ROOT = BASE_DIR.child('static3')
MEDIA_ROOT = BASE_DIR.child('media')
MEDIA_URL = 'http://pyracabados.com/media/'
