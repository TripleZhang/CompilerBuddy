from django.conf.urls import url
from .views import RunView, SaveView,ResetView,AddQuestionView

urlpatterns = [
    url(r'run/$', RunView.as_view(), name='run'),
    url(r'save/$', SaveView.as_view(), name='save'),
    url(r'reset/$', ResetView.as_view(), name='reset'),
    url(r'add_ques/$', AddQuestionView.as_view(), name='add_ques'),

]
