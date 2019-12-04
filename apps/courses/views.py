from django.shortcuts import render
from django.views.generic import View
from .models import Course
import markdown
import glob
from Compiler_teaching_platform.settings import BASE_DIR

class CourseContentView(View):
    def get(self, request, course_id, *args, **kwargs):
        course = Course.objects.filter(id=course_id)[0]
        # 显示课程的markdown教程
        content = markdown.markdown(course.body, extensions=[
            'markdown.extensions.extra',
            'markdown.extensions.codehilite',  # 语法高亮拓展
            'markdown.extensions.toc'  # 自动生成目录
        ])

        # 显示所有的.c.h文件
        course_path = course.file_path + 'code/' # /course1/code/
        user_course_path = BASE_DIR+ request.user.file_path + course_path
        all_files, all_files_name = self.files_load(user_course_path)  # all_files存储所有的文件内容，all_files_name是列表，存储所有文件名
        all_files = zip(all_files,all_files_name)

        rendict = {
            'course': course,
            'content': content,
            'all_files': all_files,
            'all_files_name': all_files_name,
            'user':request.user,
        }
        return render(request, 'course.html', rendict)

    # def post(self, request, course_id, *args, **kwargs):

    def files_load(self,user_course_path):
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