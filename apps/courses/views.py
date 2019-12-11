from django.shortcuts import render
from django.template.defaultfilters import register
from django.views.generic import View
from .models import Course, Knowledge_point
import markdown
import glob
from Compiler_teaching_platform.settings import BASE_DIR
from apps.operation.models import UserCoursePointSign
from django.contrib.auth.mixins import LoginRequiredMixin

@register.filter
def lookup(d, key):
    return d[key]

class CourseContentView(LoginRequiredMixin, View):
    login_url = "/login/"
    def get(self, request, course_id, *args, **kwargs):
        course = Course.objects.filter(id=course_id)[0]
        # 显示课程的markdown教程
        content = markdown.markdown(course.body, extensions=[
            'markdown.extensions.extra',
            'markdown.extensions.codehilite',  # 语法高亮拓展
            'markdown.extensions.toc'  # 自动生成目录
        ])

        knowledge_points = Knowledge_point.objects.filter(course=course)
        # knowledge_points = [point.name for point in knowledge_points]
        have_question = []
        for point in knowledge_points:
            if UserCoursePointSign.objects.filter(user=request.user,course=course,point=point):
                have_question.append(1)
            else:
                have_question.append(0)


        # 显示所有的.c.h文件
        course_path = course.file_path + 'code/'  # /course1/code/
        user_course_path = BASE_DIR + request.user.file_path + course_path
        all_files, all_files_name = self.files_load(user_course_path)  # all_files存储所有的文件内容，all_files_name是列表，存储所有文件名
        all_files = zip(all_files, all_files_name)
        rendict = {
            'course': course,
            'content': content,
            'all_files': all_files,
            'all_files_name': all_files_name,
            'user': request.user,
            'knowledge_points': knowledge_points,
            'have_question':have_question,
        }
        return render(request, 'course.html', rendict)

    # def post(self, request, course_id, *args, **kwargs):

    def files_load(self, user_course_path):
        path = user_course_path
        files_path = glob.glob(path + '*.c') + glob.glob(path + '*.h')
        all_files = []
        all_files_name = []
        for file_path in files_path:
            try:
                fp = open(file_path)
                content = fp.read()
                fp.close()
                file_name = file_path.split('/')[-1]
                all_files_name.append(file_name)
                all_files.append(content)
            except IOError:
                print('文件打开失败，%s文件不存在' % file_path)
        return all_files, all_files_name

# if __name__ == '__main__':
#     dir = '/Users/zach/PycharmProjects/CompilerBuddy/user_environments/1888888888/course1/code'
#     print(dir)
#     judge(dir)
