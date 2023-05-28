from django.urls import path 
from .import views 

urlpatterns = [
    path("", views.lens_list, name="lens_list"), 
    path("<int:id>", views.lens_detail, name="lens_detail")
]