from django.contrib import admin

# Register your models here.
from .models import Paciente,Doctor,Cita

admin.site.register(Paciente)
admin.site.register(Doctor)
admin.site.register(Cita)
