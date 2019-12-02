from django.conf.urls import url
from .views import CourseContentView

urlpatterns = [
    url(r'(?P<course_id>\d+)/$', CourseContentView.as_view(), name='content'),

]
