from django.conf.urls import url
from .views import RunView, SaveView,ResetView

urlpatterns = [
    url(r'run/$', RunView.as_view(), name='run'),
    url(r'save/$', SaveView.as_view(), name='save'),
    url(r'reset/$', ResetView.as_view(), name='reset'),

]
