from django.urls import path 
from .import views 

urlpatterns = [
    path("", views.accessory_list, name="accessory_list"), 
    path("<int:id>", views.accessory_detail, name="accessory_detail")
]