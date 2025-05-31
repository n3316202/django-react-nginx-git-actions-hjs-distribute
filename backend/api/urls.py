from django.urls import path
from .views import hello_drf_view

#dev_1
#http://127.0.0.1:8000/api/hello/
urlpatterns = [
    path('hello/',hello_drf_view, name='hello-world'),
]