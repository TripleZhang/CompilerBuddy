import xadmin
from .models import CourseComment, UserCourse, UserMessage,UserCourseSectionSign



class UserCourseAdmin(object):
    list_display = ['user', 'course', 'add_time']
    search_fields = ['user', 'course']
    list_filter = ['user', 'course', 'add_time']

class UserMessageAdmin(object):
    list_display = ['user', 'message', 'has_read', 'add_time']
    search_fields = ['user', 'message', 'has_read']
    list_filter = ['user', 'message', 'has_read', 'add_time']


class CourseCommentsAdmin(object):
    list_display = ['user', 'course', 'comments', 'add_time']
    search_fields = ['user', 'course', 'comments']
    list_filter = ['user', 'course', 'comments', 'add_time']


class UserCourseSectionSignAdmin(object):
    list_display = ['user', 'course', 'section', 'sign']
    search_fields = ['user', 'course', 'section']
    list_filter = ['user', 'course', 'section']


xadmin.site.register(UserCourse, UserCourseAdmin)
xadmin.site.register(UserMessage, UserMessageAdmin)
xadmin.site.register(CourseComment, CourseCommentsAdmin)
xadmin.site.register(UserCourseSectionSign, UserCourseSectionSignAdmin)