from django import forms

from .models import Usuario, Departamento, Provincia, Distrito

from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class registro(forms.ModelForm):

    class Meta:
        model = Usuario
        fields = ('usucod', 'usunom','usuape','usuzon','usutel','usudir')

class CustomUserCreationForm(UserCreationForm):
     
     class Meta:
         model = User
         fields = ('username', 'email', 'password1' ,'password2')


class InsertDep(forms.ModelForm):
    
    class Meta:
        model = Departamento
        fields = ('depcod','depnom')

class InsertPro(forms.ModelForm):

    class Meta:
        model = Provincia
        fields = ('procod','pronom','prodepcod')
        labels = {'procod':'Código de Provincia','pronom':'Nombre de provincia','prodepcod':'Departamento'}

class InsertarDis(forms.ModelForm):

    class Meta:
        model = Distrito
        fields = ('discod','disnom','disprocod')
        labels = {'discod':'Código de distrito','disnom':'Nombre de distrito','disprocod':'Provincia'}