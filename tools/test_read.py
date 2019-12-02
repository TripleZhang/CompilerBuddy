import glob
import os

path = "/Users/zach/PycharmProjects/CompilerBuddy/tiger/code/"  # 设置路径
files_path = glob.glob(path+'*.c')+glob.glob(path+'*.h')
all_files = {}
all_files_name = []
for file_path in files_path:
    try:
        fp = open(file_path)
        content = fp.read()
        fp.close()
        file_name = file_path.split('/')[-1]
        all_files_name.append(file_name)
        all_files[file_name] = content
    except IOError:
        print('文件打开失败，%s文件不存在' % file_path)


print(all_files.keys())
print(all_files['main.c'])
