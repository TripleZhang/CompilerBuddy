# Generated by Django 2.2 on 2019-11-23 14:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='learn_times',
            field=models.IntegerField(default=0, verbose_name='需要学习时长（分钟数）'),
        ),
    ]