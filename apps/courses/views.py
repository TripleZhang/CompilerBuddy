from django.shortcuts import render
from django.views.generic import View
from django.http import JsonResponse
from .models import Course
import markdown
import os
import glob

from tiger.judge import judge


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
        all_files, all_files_name = self.files_load()  # all_files存储所有的文件内容，all_files_name是列表，存储所有文件名

        rendict = {
            'course': course,
            'content': content,
            'all_files': all_files,
            'all_files_name': all_files_name,
        }
        return render(request, 'course.html', rendict)

    # def post(self, request, course_id, *args, **kwargs):

    def files_load(self):
        path = "/Users/zach/PycharmProjects/CompilerBuddy/tiger/code/"  # 设置路径
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
