from django.contrib import admin

from .models import Tipo_Cliente
# Register your models here.

class Tipo_Cliente_Admin(admin.ModelAdmin):
    list_display = ('id','tipCliNom')

admin.site.register(Tipo_Cliente, Tipo_Cliente_Admin)