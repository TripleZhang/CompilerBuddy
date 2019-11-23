from django.shortcuts import render

from django.shortcuts import render
from django.views.generic import View
from django.contrib.auth import authenticate, login, logout
from django.http import HttpResponseRedirect, JsonResponse
from django.urls import reverse
from .form import LoginForm, DynamicLoginForm, DynamicLoginPostForm, RegisterGetForm,RegisterPostForm
from ..utils.yunpian import send_single_sms
from ..utils.random_str import generate_random
from Compiler_teaching_platform.settings import yp_apikey, REDIS_HOST, REDIS_PORT
import redis
from .models import UserProfile


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
            user = UserProfile(username=mobile, mobile=mobile, password=password)
            user.save()
            login(request, user)
            return HttpResponseRedirect(reverse('index'))
        else:
            regist_get_form = RegisterGetForm()
            return render(request, 'register.html', {
                'regist_get_form': regist_get_form,
                'regist_post_form': regist_post_form,

            })






class DynamicLoginView(View):
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
        return render(request, 'login.html', {
            'login_form': login_form
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
                # 成功登陆后跳转到
                return HttpResponseRedirect(reverse('index'))
            else:
                return render(request, 'login.html', {'msg': '用户名或密码错误',
                                                      'login_form': login_form})
        else:
            return render(request, 'login.html', {'login_form': login_form})
