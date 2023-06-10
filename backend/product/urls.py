from django.urls import path 
from .import views 

urlpatterns = [
    path("", views.product_list, name="product_list"), 
    path("id=<int:item_id>", views.product_detail, name="product_detail")
]