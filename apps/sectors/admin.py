from django.contrib import admin
from .models import Sector, SectorSpanish
# Register your models here.

@admin.register(Sector)
#@admin.register(SectorSpanish)

class SectorAdmin(admin.ModelAdmin):
    pass
