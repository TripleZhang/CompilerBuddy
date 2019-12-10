from django.shortcuts import render

from django.shortcuts import render
from django.views.generic import View
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect, JsonResponse
from django.urls import reverse
from .forms import LoginForm, DynamicLoginForm, DynamicLoginPostForm, RegisterGetForm,RegisterPostForm,UserInfoForm
from .forms import UploadImageForm,UpdateMobileForm,ChangePwdForm
from ..utils.yunpian import send_single_sms
from ..utils.random_str import generate_random
from Compiler_teaching_platform.settings import yp_apikey, REDIS_HOST, REDIS_PORT
import redis
from .models import UserProfile
from django.contrib.auth.mixins import LoginRequiredMixin
from pure_pagination import Paginator, PageNotAnInteger
from django.contrib.auth.backends import ModelBackend
from apps.operation.models import  UserMessage
from django.db.models import Q
from tools.test_new_user import copy_files


class CustomAuth(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = UserProfile.objects.get(Q(username=username)|Q(mobile=username))
            if user.check_password(password):
                return user
        except Exception as e:
            return None


def message_nums(request):
    """
    Add media-related context variables to the context.
    """
    if request.user.is_authenticated:
        return {'unread_nums': request.user.usermessage_set.filter(has_read=False).count()}
    else:
        return {}


class MyMessageView(LoginRequiredMixin, View):
    login_url = "/login/"

    def get(self, request, *args, **kwargs):
        messages = UserMessage.objects.filter(user=request.user)
        current_page = "message"
        for message in messages:
            message.has_read = True
            message.save()

        # 对讲师数据进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(messages, per_page=1, request=request)
        messages = p.page(page)

        return render(request, "usercenter-message.html",{
            "messages":messages,
            "current_page":current_page
        })

class ChangeMobileView(LoginRequiredMixin, View):
    login_url = "/login/"
    def post(self, request, *args, **kwargs):
        mobile_form = UpdateMobileForm(request.POST)
        if mobile_form.is_valid():
            mobile = mobile_form.cleaned_data["mobile"]
            #已经存在的记录不能重复注册
            # if request.user.mobile == mobile:
            #     return JsonResponse({
            #         "mobile": "和当前号码一致"
            #     })
            if UserProfile.objects.filter(mobile=mobile):
                return JsonResponse({
                    "mobile":"该手机号码已经被占用"
                })
            user = request.user
            user.mobile = mobile
            user.username = mobile
            user.save()
            return JsonResponse({
                "status": "success"
            })
        else:
            return JsonResponse(mobile_form.errors)
            # logout(request)


class ChangePwdView(LoginRequiredMixin, View):
    login_url = "/login/"
    def post(self, request, *args, **kwargs):
        pwd_form = ChangePwdForm(request.POST)
        if pwd_form.is_valid():
            # pwd1 = request.POST.get("password1", "")
            # pwd2 = request.POST.get("password2", "")
            #
            # if pwd1 != pwd2:
            #     return JsonResponse({
            #         "status":"fail",
            #         "msg":"密码不一致"
            #     })
            pwd1 = request.POST.get("password1", "")
            user = request.user
            user.set_password(pwd1)
            user.save()
            # login(request, user)

            return JsonResponse({
                "status":"success"
            })
        else:
            return JsonResponse(pwd_form.errors)


class UploadImageView(LoginRequiredMixin, View):
    login_url = "/login/"

    # def save_file(self, file):
    #     with open("C:/Users/Administrator/PycharmProjects/MxOnline/media/head_image/uploaded.jpg", "wb") as f:
    #         for chunk in file.chunks():
    #             f.write(chunk)

    def post(self, request, *args, **kwargs):
        #处理用户上传的头像
        image_form = UploadImageForm(request.POST, request.FILES, instance=request.user)
        if image_form.is_valid():
            image_form.save()
            return JsonResponse({
                "status":"success"
            })
        else:
            return JsonResponse({
                "status": "fail"
            })
        # files = request.FILES["image"]
        # self.save_file(files)

        #1. 如果同一个文件上传多次，相同名称的文件应该如何处理
        #2. 文件的保存路径应该写入到user
        #3. 还没有做表单验证
class UserInfoView(LoginRequiredMixin, View):
    login_url = "/login/"

    def get(self, request, *args, **kwargs):
        current_page = "info"
        captcha_form = RegisterGetForm()
        return render(request, "usercenter-info.html",{
            "captcha_form":captcha_form,
            "current_page":current_page
        })

    def post(self, request, *args, **kwargs):
        user_info_form = UserInfoForm(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return JsonResponse({
                "status":"success"
            })
        else:
            return JsonResponse(user_info_form.errors)


class RegisterView(View):
    def get(self, request, *args, **kwargs):
        regist_get_form = RegisterGetForm()
        return render(request, 'register.html', {
            'regist_get_form': regist_get_form,

        })
    def post(self, request, *args, **kwargs):
        regist_post_form = RegisterPostForm(request.POST)
        if regist_post_form.is_valid():
            mobile = regist_post_form.cleaned_data['mobile']
            password = regist_post_form.cleaned_data['password']
            user = UserProfile(username=mobile, mobile=mobile, password=password, file_path='/user_environments/'+str(mobile))
            message = UserMessage(user=user, message='欢迎加入CompilerBuddy学习！')
            message.save()
            user.save()
            copy_files('/user_environments/'+str(mobile))
            login(request, user)
            return HttpResponseRedirect(reverse("index"))
        else:
            regist_get_form = RegisterGetForm()
            return render(request, 'register.html', {
                'regist_get_form': regist_get_form,
                'regist_post_form': regist_post_form,

            })








class DynamicLoginView(View):
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse("index"))
        next = request.GET.get("next", "")
        login_form = DynamicLoginForm()
        return render(request, "login.html", {
            "login_form": login_form,
            "next": next,
        })
    def post(self, request, *args, **kwargs):
        dynamic_login = DynamicLoginPostForm(request.POST)
        dynamic_login_tag = True
        if dynamic_login.is_valid():
            mobile = dynamic_login.cleaned_data['mobile']
            existed_users = UserProfile.objects.filter(mobile=mobile)
            if existed_users:
                user = existed_users[0]
            else:
                user = UserProfile(username=mobile, mobile=mobile)
                password = generate_random(10, 2)
                user.set_password(password)
                user.save()
            login(request, user)
            next = request.GET.get("next", "")
            if next:
                return HttpResponseRedirect(next)
            return HttpResponseRedirect(reverse('index'))
        else:
            d_form = DynamicLoginForm()
            return render(request, 'login.html', {
                'login_form': dynamic_login,
                'dynamic_login_tag': dynamic_login_tag,
                'd_form': d_form,

            })


class SendSmsView(View):
    def post(self, request, *args, **kwargs):
        send_sms_form = DynamicLoginForm(request.POST)
        re_dict = {}
        if send_sms_form.is_valid():
            mobile = send_sms_form.cleaned_data['mobile']
            # 随机生成数字验证码
            code = generate_random(4, 0)
            re_json = send_single_sms(yp_apikey, code, mobile)
            if re_json['code'] == 0:
                re_dict['status'] = 'success'
                r = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, db=0, charset='utf8', decode_responses=True)
                r.set(str(mobile), code)
                r.expire(str(mobile), 5 * 60)
            else:
                re_dict['msg'] = re_json['msg']
        else:
            for key, value in send_sms_form.errors.items():
                re_dict[key] = value[0]
        return JsonResponse(re_dict)


class LogoutView(View):
    def get(self, request, *args, **kwargs):
        logout(request)
        return HttpResponseRedirect(reverse('index'))


class LoginView(View):
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return HttpResponseRedirect(reverse('index'))
        login_form = DynamicLoginForm()
        next = request.GET.get("next", "")
        return render(request, 'login.html', {
            'login_form': login_form,
            "next": next,
        })

    def post(self, request, *args, **kwargs):
        # 不使用表单验证的方法
        # user_name = request.POST.get('username', '')
        # pass_word = request.POST.get('password', '')
        #
        # if not user_name:
        #     return render(request, 'login.html', {'msg': '请输入用户名'})
        # if not pass_word:
        #     return render(request, 'login.html', {'msg': '请输入密码'})
        # if len(pass_word)<3:
        #     return render(request, 'login.html', {'msg': '密码格式错误'})

        # =====使用表单验证的方法=====
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            # 用于通过账号密码检查用户是否存在
            user_name = login_form.cleaned_data['username']
            pass_word = login_form.cleaned_data['password']
            user = authenticate(username=user_name, password=pass_word)
            if user is not None:
                # 查询到用户，成功登陆
                login(request, user)  # 帮助完成cookies等设置
                next = request.GET.get("next", "")
                if next:
                    return HttpResponseRedirect(next)
                return HttpResponseRedirect(reverse("index"))
            else:
                return render(request, 'login.html', {'msg': '用户名或密码错误',
                                                      'login_form': login_form})
        else:
            return render(request, 'login.html', {'login_form': login_form})
