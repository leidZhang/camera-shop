from django.urls import path 
from .import views 

urlpatterns = [
    path("user=<int:uid>", views.cart_items_by_user_id, name="cart_item_by_user_id"),
    path("delete/user=<int:user_id>&id=<int:row_id>", views.delete_by_id, name="delete_by_id")
]