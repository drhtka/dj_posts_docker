# -*- coding: utf-8 -*-
from django.conf.urls.static import static
from django.urls import path
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from dj_posts_docker import settings
from . import views

urlpatterns = [
    path('', views.post_list, name='post_list'),
    path('create/', views.post_create, name='post_create'),
    path('<int:pk>/', views.post_detail, name='post_detail'),
]
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
