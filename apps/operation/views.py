from tiger.course1.judge import judge
from django.views.generic import View
from django.http import JsonResponse
from apps.courses.models import Course
from .forms import SaveForm, ResetForm
from Compiler_teaching_platform.settings import BASE_DIR, ORIGINAL_FILE_DIR


class ResetView(View):
    def post(self, request, *args, **kwargs):
        if not request.user.is_authenticated:
            return JsonResponse({
                'status': 'fail',
                'msg': '用户未登录',
            })
        reset_form = ResetForm(request.POST)
        if reset_form.is_valid():
            file_name = reset_form.cleaned_data['file_name']
            course_id = reset_form.cleaned_data['course_id']

            course_path = Course.objects.filter(id=course_id)[0].file_path + 'code/'  # /course1/code/
            original_file_path = ORIGINAL_FILE_DIR + course_path + file_name  # /Users/zach/PycharmProjects/CompilerBuddy/tiger/course1/code/main.c
            save_file_path = request.user.file_path + course_path + file_name  # /user_environments/1888888888/course1/code/main.c
            if self.reset_file(save_file_path, original_file_path):
                return JsonResponse({
                    'status': 'success',
                    'msg': '重置成功',
                })
            else:
                return JsonResponse({
                    'status': 'fail',
                    'msg': '重置失败',
                })
        else:
            return JsonResponse({
                'status': 'fail',
                'msg': '重置失败！表单格式错误',
            })

    def reset_file(self, reset_file_path, original_file_path):
        reset_file_path = BASE_DIR + reset_file_path
        try:
            ft = open(original_file_path, 'r')
            content = ft.read()
            ft.close()
        except IOError:
            print('源文件打开失败，%s文件不存在' % original_file_path)
            return 0
        try:
            fp = open(reset_file_path, 'w')
            fp.seek(0)
            fp.truncate()
            fp.write(content)
            fp.close()
        except IOError:
            print('文件打开失败，%s文件不存在' % reset_file_path)
            return 0
        return 1


class SaveView(View):
    def post(self, request, *args, **kwargs):
        if not request.user.is_authenticated:
            return JsonResponse({
                'status': 'fail',
                'msg': '用户未登录',
            })
        save_form = SaveForm(request.POST)
        if save_form.is_valid():
            file_name = save_form.cleaned_data['file_name']
            file_content = request.POST.get('file_content')
            course_id = save_form.cleaned_data['course_id']

            course_path = Course.objects.filter(id=course_id)[0].file_path + 'code/'
            save_file_path = request.user.file_path + course_path + file_name
            if self.save_file(save_file_path, file_content):
                return JsonResponse({
                    'status': 'success',
                    'msg': '保存成功',
                })
            else:
                return JsonResponse({
                    'status': 'fail',
                    'msg': '保存失败',
                })
        else:
            return JsonResponse({
                'status': 'fail',
                'msg': '保存失败，表单格式错误！',
            })

    def save_file(self, save_file_path, file_content):
        save_file_path = BASE_DIR + save_file_path
        try:
            fp = open(save_file_path, 'w')
            fp.seek(0)
            fp.truncate()
            fp.write(file_content)
            fp.close()
        except IOError:
            print('文件打开失败，%s文件不存在' % save_file_path)
            return 0
        return 1


class RunView(View):
    def post(self, request, *args, **kwargs):
        # 先判断用户是否登录
        if not request.user.is_authenticated:
            return JsonResponse({
                'status': 'fail',
                'msg': '用户未登录',
            })
        course_id = request.POST.get('course_id', '')
        if course_id:
            course = Course.objects.filter(id=course_id)[0]
            course_path = course.file_path
            user_run_dir = BASE_DIR + request.user.file_path + course_path + 'code/'
            try:
                result = judge(user_run_dir)
            except Exception as e:
                return JsonResponse({
                    'status': 'fail',
                    'msg': 'judge函数运行失败：' + e,
                })

            if result == 'Pass':
                msg = '编译器运行成功'
            else:
                msg = result
            return JsonResponse({
                'status': 'success',
                'msg': msg,
            })
        else:
            return JsonResponse({
                'status': 'fail',
                'msg': '参数错误：课程编号未指定',
            })
