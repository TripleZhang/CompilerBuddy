# import os
# from Compiler_teaching_platform.settings import USER_ENVIRONMENTS
# def judge(user_dir,course_dir):
#     dir = USER_ENVIRONMENTS+user_dir+course_dir
#     print(dir)
#     dir = '/Users/zach/PycharmProjects/CompilerBuddy/user_environments/1888888888/course1/code/make.sh'
#     pipline = os.popen("sh " + dir)
#
#     return pipline.read()
#
# if __name__ == '__main__':
#     user_dir = '18888888888/'
#     course_dir = 'course1/code/make.sh'
#     judge(user_dir,course_dir)


import os

def judge(dir):
    pipline = os.popen("sh make.sh")
    return pipline.read()

if __name__ == '__main__':
    print(judge(''))
