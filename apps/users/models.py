from django.db import models

from django.db import models
from django.contrib.auth.models import AbstractUser
from datetime import datetime

# Create your models here.
GENDER_CHOICES = (
    ('male', '男'),
    ('female', '女')
)


class BaseModel(models.Model):
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        abstract = True


class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name='昵称', default='')
    birthday = models.DateField(verbose_name='生日', null=True, blank=True)
    gender = models.CharField(choices=GENDER_CHOICES, verbose_name='性别', max_length=6)
    school = models.CharField(max_length=50, verbose_name='所属学校', default='')
    mobile = models.CharField(max_length=11, verbose_name='手机号码')
    head_image = models.ImageField(upload_to='head_image/%Y/%m', default='default.jpg', verbose_name='用户头像')
    file_path = models.CharField(max_length=50, verbose_name='用户文件夹路径', default='users_file/default_user/')

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        if self.nike_name:
            return self.nike_name
        else:
            return self.username
