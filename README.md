# CompilerBuddy
本项目采用Bootstrap + Django做为框架进行开发。


### 项目中各文件目录作用

最顶层文件夹下有如下文件：

- apps: 存放项目的各种app
- Compiler_teaching_platform: 项目的一系列配置信息
- extra_apps:
- img: 项目文档中各种图片存放路径
- static: 项目中静态页面的相关信息
- templates: 项目中各页面的html文件
- tiger: Tiger编译器的模版代码、文档、判断正误模块
- tools:
- uploads:
- user_environments: 模拟用户，用于测试
- xadmin:
- manage.py: Django的任务管理命令行工具
- requirements.txt: 环境配置文件

#### Compiler_teaching_platform

该文件夹是执行`django-admin startproject Compiler_teaching_platform`时创建的，其中包括：

（1）`_init_.py`

（2）`settings.py`: 这个文件中包括了项目的初始化设置，可以针对整个项目进行有关参数配置，比如配置数据库、添加应用等。

（3）`urls.py`：这是一个URL配置表文件，主要是将URL映射到应用程序上。当用户请求某个URL时，Django会根据这个文件夹中的映射关系指向某个目标对象，该对象可以是某个应用中的urls.py文件，也可以是某个具体的视图函数。在Django中，这个文件也被称为URLconf，这是Django非常强大的一个特性。

（4）`wsgi.py`: WSGI是 Web Server Gateway Interface缩写，它是python所选择的服务器和应用标准，django也会使用。wsgi.py定义了我们所创建的项目都是WSGI应用。

#### manage.py

该文件是执行`django-admin startproject Compiler_teaching_platform`时创建的，它是django的任务管理命令行工具。
