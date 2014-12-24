from django.contrib import admin
from .models import TextServices, TextProjects, TextServicesSpanish, TextProjectsSpanish

# Register your models here.

admin.site.register(TextServices)
admin.site.register(TextServicesSpanish)
admin.site.register(TextProjects)
admin.site.register(TextProjectsSpanish)
