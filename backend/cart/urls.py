from django.urls import path 
from .import views 

urlpatterns = [
    path("<int:id>", views.cart_items_by_id, name="cart_items")
]