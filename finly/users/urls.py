from django.urls import path
from . import views

urlpatterns = [
    # define URL patterns for each view of your app here

     path('users', views.users, name='test user url path'),
]

