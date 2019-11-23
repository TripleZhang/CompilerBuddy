import xadmin
from .models import Course, Section


class GlobalSettings:
    site_title = 'CompilerBuddy后台管理'
    site_footer = 'CompilerBuddy在线编译器学习'
    # menu_style = 'accordion'

class BaseSettings:
    enable_themes = True
    use_bootswatch = True


class CourseAdmin:
    list_display = ['name', 'desc', 'body', 'learn_times','file_path','add_time']
    search_fields = ['name', 'desc', 'body', 'learn_times','file_path']
    list_filter = ['name', 'desc', 'body', 'learn_times','file_path','add_time']
    list_editable = ['name', 'desc']


class SectionAdmin(object):
    list_display = ['course', 'name', 'add_time','sign_num']
    search_fields = ['course', 'name']
    list_filter = ['course__name', 'name', 'add_time']

#
# class VideoAdmin(object):
#     list_display = ['lesson', 'name', 'add_time']
#     search_fields = ['lesson', 'name']
#     list_filter = ['lesson', 'name', 'add_time','sign_num']


# class CourseResourceAdmin(object):
#     list_display = ['course', 'name', 'file', 'add_time']
#     search_fields = ['course', 'name', 'file']
#     list_filter = ['course', 'name', 'file', 'add_time']


xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(Section, SectionAdmin)
# xadmin.site.register(Video, VideoAdmin)
# xadmin.site.register(CourseResource, CourseResourceAdmin)

xadmin.site.register(xadmin.views.CommAdminView, GlobalSettings)
xadmin.site.register(xadmin.views.BaseAdminView, BaseSettings)

