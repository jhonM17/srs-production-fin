from django.contrib import admin
from .models import Entity, License, LicenseSpanish, EntitySpanish
# Register your models here.

admin.site.register(Entity)
admin.site.register(License)
admin.site.register(EntitySpanish)
admin.site.register(LicenseSpanish)
