from django.contrib import admin
from .models import EntitySpanish, LicenseSpanish, Entity, License
# Register your models here.

admin.site.register(Entity)
admin.site.register(EntitySpanish)
admin.site.register(License)
admin.site.register(LicenseSpanish)
