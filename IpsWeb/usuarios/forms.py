from django import forms

from .models import Usuario, Departamento, Provincia

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
        fields = ('procod','pronom')