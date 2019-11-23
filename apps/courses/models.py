from django.db import models
from apps.users.models import BaseModel
from mdeditor.fields import MDTextField


class Course(BaseModel):
    name = models.CharField(max_length=50, verbose_name='课程名')
    desc = models.CharField(max_length=300, verbose_name='课程简述')
    file_path = models.CharField(max_length=100, verbose_name='源码相对路径名')
    # detail = models.TextField(verbose_name='课程详情')
    learn_times = models.IntegerField(default=0, verbose_name='需要学习时长（分钟数）')
    body = MDTextField(verbose_name='课程内容')
    image = models.ImageField(upload_to='courses/%Y/%m', max_length=100, verbose_name='课程标签图')

    class Meta:
        verbose_name = '课程信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class Section(BaseModel):
    course = models.ForeignKey(Course, on_delete=models.CASCADE,
                               verbose_name='课程名')  # on_delete表示课程被删掉后应该怎么做，Cascade 表示级联删除
    name = models.CharField(max_length=100, verbose_name='章节名')
    sign_num = models.IntegerField(verbose_name='用户标记数', default=0)

    class Meta:
        verbose_name = '章节信息'
        verbose_name_plural = verbose_name
        unique_together = (('course', 'name'),)

    def __str__(self):
        return self.name

# class Video(BaseModel):
#     lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
#     name = models.CharField(max_length=100, verbose_name='视频名')
#     learn_times = models.IntegerField(default=0, verbose_name='学习时长（分钟数）')
#     url = models.CharField(max_length=200, verbose_name=u'视频地址')
#
#     class Meta:
#         verbose_name = '视频信息'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         self.name
#
#
# class CourseResource(BaseModel):
#     course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='课程资源')
#     name = models.CharField(max_length=100, verbose_name='资源名')
#     file = models.FileField(upload_to='course/resourse/%Y/%m', max_length=100, verbose_name='资源地址')
#
#     class Meta:
#         verbose_name = '资源信息'
#         verbose_name_plural = verbose_name
#
#     def __str__(self):
#         self.name
