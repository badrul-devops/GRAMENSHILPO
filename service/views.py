from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth import login 
from django.contrib.auth.hashers import check_password
from django.core.exceptions import ObjectDoesNotExist
# Create your views here.
def home(request):
    return render(request, 'index.html')
def user_login(request):
    if request.method == 'POST':
        log_email = request.POST.get('email')
        log_password = request.POST.get('password')

        try:
            user = User.objects.get(email=log_email)
            if check_password(log_password, user.password):
                # Password is correct
              
                login(request, user)
                return redirect('home')
            else:
                # Password is incorrect
                return redirect('login')
        except ObjectDoesNotExist:
            # User does not exist
            return redirect('login')

    return render(request, 'login.html')
def register(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        email = request.POST.get('email')
        password = request.POST.get('password')
        conf_password = request.POST.get('confirm-password')
        if password != conf_password:
            return redirect('register')
        else:
            user_info= User.objects.create_user(name,email,password)
            user_info.save()
            return redirect('login')
            
        
    return render(request, 'register.html')
def seller(request):
    return render(request, 'Seller_Log.html')