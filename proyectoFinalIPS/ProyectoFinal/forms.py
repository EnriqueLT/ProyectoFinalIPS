from django import forms

from .models import Paciente,Cita,Doctor

class pacienteForm(forms.ModelForm):
    class Meta:
        model = Paciente
        fields = [
            'nombres',
            'apellidos',
            'edad',
            'dni',
            'email'
        ]
        widgets = {
            'nombres':forms.TextInput(attrs={'placeholder':'nombres'}),
           	'apellidos':forms.TextInput(attrs={'placeholder':'apellidos'}),
            'edad':forms.TextInput(attrs={'placeholder':'edad'}),
            'dni':forms.TextInput(attrs={'placeholder':'99999999'}),
            'email':forms.TextInput(attrs={'placeholder':'email'}),
        }
class doctorForm(forms.ModelForm):
    class Meta:
        model = Doctor
        fields = [
            'areaMedica',
            'nombres',
            'apellidos',
            'dni'
        ]

class citaForm(forms.ModelForm):
    class Meta:
        model = Cita
        fields = [
           'doctor',
           'paciente',
           'fecha',
           'hora'
        ]
