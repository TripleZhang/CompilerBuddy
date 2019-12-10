from django.db import models
from apps.users.models import BaseModel
from django.contrib.auth import get_user_model
from apps.courses.models import Course, Section

UserProfile = get_user_model()


class CourseComment(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name='用户id')
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='评论的课程')
    comments = models.CharField(max_length=300, verbose_name='评论内容')
    class Meta:
        verbose_name = '课程评论'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.comments



class UserCourseSectionSign(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name='用户id')
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='标记的课程')
    section = models.ForeignKey(Section, on_delete=models.CASCADE, verbose_name='标记的课程段落')
    sign = models.BooleanField(verbose_name='1代表认为困难')

    class Meta:
        verbose_name = '用户课程段落标记'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.user.nick_name

class UserMessage(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name='用户id')
    message = models.CharField(max_length=200, verbose_name='消息内容')
    has_read = models.BooleanField(default=False, verbose_name='是否已读')

    class Meta:
        verbose_name = '用户消息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.message


class UserCourse(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name='用户id')
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name='学习的课程')

    class Meta:
        verbose_name = '用户课程'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.course.name
