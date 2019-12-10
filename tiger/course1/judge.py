from Compiler_teaching_platform.settings import BASE_DIR
import os

def judge(dir):
    # dir = "./tiger/code"
    # 在指定文件目录make代码
    # os.system("ls")
    makePipline = os.popen("sh make.sh " + dir)
    makeResult = makePipline.read()
    # 在指定文件目录执行可执行文件
    pipline = os.popen("sh runtiger.sh " + dir)
    result = pipline.read()
    # 判断是否结果是否正确
    if result == "1":
        return "Pass"
    else:
        return makeResult

if __name__ == '__main__':
    PATH = BASE_DIR+'/user_environments/1888888888/course1/code/'
    print(judge(PATH))