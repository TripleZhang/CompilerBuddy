import os

def judge(dir):
    # dir = "./tiger/code"
    # 在指定文件目录make代码
    os.popen("sh make.sh " + dir)
    # 在指定文件目录执行可执行文件
    pipline = os.popen("sh runtiger.sh " + dir)
    # 判断是否结果是否正确
    if pipline.read() == "1":
        return 1
    else:
        return 0

if __name__ == '__main__':
    print(judge('/Users/zhanghongbin/Desktop/CompilerBuddy/user_environments/1888888888/course1/code'))