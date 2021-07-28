from django.shortcuts import render, redirect
from .forms import registro, CustomUserCreationForm, InsertDep, InsertPro
from django.contrib.auth import authenticate, login

# Create your views here.
def register(request):
    if request.method == 'POST':
        form_registro = registro(request.POST)
        if form_registro.is_valid():
            form_registro.save()
            return redirect("/")
    else:
        form = registro()

    context = {'form':form}
    return render(request, 'registro.html', context)

def signup(request):

    if request.method == 'POST':
        formu = CustomUserCreationForm(request.POST)
        print(formu)
        if formu.is_valid():
            formu.save()
            user = authenticate(username=formu.cleaned_data['username'], password=formu.cleaned_data['password1'])
            login(request, user)
            return redirect("/register")
        else:
            return redirect("/")
    else:
        data = {
        'form': CustomUserCreationForm()
        }

    return render(request,'registration/signup.html',data)

def camas(request):

    return render(request,'camas.html')

def oxigeno(request):

    return render(request, 'oxigeno.html')

def foro(request):

    return render(request, 'forums.html')

def departamento(request):

    if request.method == 'POST':
        form = InsertDep(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/')
    else:
        form = InsertDep()

    context = {'form':form}
    return render(request, 'ubicacion/departamento.html',context)

def provincia(request):

    if request.method == 'POST':
        form = InsertPro(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/')
    else:
        form = InsertPro()

    context = {'form':form}
    return render(request, 'ubicacion/provincia.html',context)