from Compiler_teaching_platform.settings import BASE_DIR
import os

def judge(dir):
    # dir = "./tiger/code"
    # 在指定文件目录make代码
    # os.system("ls")
    makePipline = os.popen("sh make.sh " + dir)
    # makeResult = makePipline.read()
    # 在指定文件目录执行可执行文件
    pipline = os.popen("sh runtiger.sh " + dir)
    result = pipline.read()
    # make clean
    os.system("sh clean.sh " + dir)
    # 判断是否结果是否正确
    if result == "1":
        return "Pass"
    else:
        errorfile = open(dir+'error.log')
        try:
            makeResult = errorfile.read()
        finally:
            errorfile.close()
        return makeResult

if __name__ == '__main__':
    # PATH = BASE_DIR+'/user_environments/1888888888/course1/code/'
    PATH = './code'
    result = judge(PATH)
    print("------------------------------")
    print(result)