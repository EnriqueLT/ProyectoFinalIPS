from django.shortcuts import render, redirect
from .forms import registro, CustomUserCreationForm, InsertDep, InsertPro, InsertarDis
from django.contrib.auth import authenticate, login
from .models import Hospital, ForoComentario, Producto

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

    if request.method == 'POST':
        pass
    else:
        data = Hospital.objects.all()

    return render(request,'camas.html',{'hospital':data})

def oxigeno(request):

    if request.method == 'POST':
        pass
    else:
        data = Producto.objects.all()

    return render(request, 'oxigeno.html',{'productos':data})

def foro(request):

    data = ForoComentario.objects.all()

    return render(request, 'forums.html',{'comentarios':data})

def departamento(request):

    if request.method == 'POST':
        form = InsertDep(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/departamento/')
    else:
        form = InsertDep()

    context = {'form':form}
    return render(request, 'ubicacion/departamento.html',context)

def provincia(request):

    if request.method == 'POST':
        form = InsertPro(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/provincia/')
    else:
        form = InsertPro()

    context = {'form':form}
    return render(request, 'ubicacion/provincia.html',context)

def distrito(request):

    if request.method == 'POST':
        form = InsertarDis(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/distrito/')
    else:
        form = InsertarDis()

    context = {'form':form}
    return render(request, 'ubicacion/distrito.html',context)