"""Compiler_teaching_platform URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url,include
import xadmin
from Compiler_teaching_platform import settings
from django.conf.urls.static import static
from django.views.decorators.csrf import csrf_exempt
from apps.users.views import LoginView,LogoutView,SendSmsView,DynamicLoginView,RegisterView
from django.views.generic import TemplateView



urlpatterns = [
    path('xadmin/', xadmin.site.urls),
    path('', TemplateView.as_view(template_name='index.html'), name='index'),
    url(r'mdeditor/', include('mdeditor.urls')),
    path('login/', LoginView.as_view(), name='login'),
    path('register/', RegisterView.as_view(), name='register'),
    path('dynamiclogin/', DynamicLoginView.as_view(), name='dynamiclogin'),
    url(r'^captcha/', include('captcha.urls')),
    path('logout/', LogoutView.as_view(), name='logout'),
    url(r'^send_sms/', csrf_exempt(SendSmsView.as_view()),name='send_sms'),
    path('test/',TemplateView.as_view(template_name='test.html'), name='test'),
    url(r'^ueditor/',include('DjangoUeditor.urls' )),
    # 课程相关页面
    url(r'^course/', include(('apps.courses.urls', 'courses'), namespace='course')),
    # 操作
    url(r'^operation/', include(('apps.operation.urls', 'operation'), namespace='op')),
    # 用户
    url(r'^users/', include(('apps.users.urls', 'users'), namespace='users')),


]

if settings.DEBUG:
    # static files (images, css, javascript, etc.)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
