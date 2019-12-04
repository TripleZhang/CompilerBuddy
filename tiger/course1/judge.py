import os
from Compiler_teaching_platform.settings import BASE_DIR

def judge(dir):
    # dir = "./tiger/code"
    # 在指定文件目录make代码
    command1 = "sh {0}make.sh ".format(BASE_DIR + dir)
    os.system("sh {0}make.sh ".format(BASE_DIR + dir))
    # 在指定文件目录执行可执行文件
    pipline = os.popen("sh {0}runtiger.sh ".format(BASE_DIR + dir))
    command2 = "sh {0}runtiger.sh ".format(BASE_DIR + dir)
    result = pipline.read()
    print (result)
    # 判断是否结果是否正确
    if result == "1":
        return 1
    else:
        return 0

if __name__ == '__main__':
    res = judge('../user_environments/1888888888/course1/code')
    print('res:',res)