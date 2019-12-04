import os

def judge(dir):
    # dir = "./tiger/code"
    # 在指定文件目录make代码
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
    print(judge('/Users/zhanghongbin/Desktop/CompilerBuddy/user_environments/1888888888/course1/code'))