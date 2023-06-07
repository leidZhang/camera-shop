from django.shortcuts import render
from .models import Address

def address_list(request): 
    addresses = Address.objects.all()
    return render(request, "address/address_list.html", {'addresses': addresses})
