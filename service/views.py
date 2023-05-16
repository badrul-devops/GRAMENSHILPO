from django.shortcuts import render

# Create your views here.
def home(request):
    return render(request, 'index.html')
def login(request):
    return render(request, 'Login.html')
def register(request):
    return render(request, 'register.html')
def seller(request):
    return render(request, 'Seller_Log.html')