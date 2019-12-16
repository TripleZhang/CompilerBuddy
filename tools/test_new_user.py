from Compiler_teaching_platform.settings import ORIGINAL_FILE_DIR,BASE_DIR

import os
import shutil
# BASE_DIR = '/root/CompilerBuddy'
# ORIGINAL_FILE_DIR = '/root/CompilerBuddy'+'/tiger'
# \cp -R /root/CompilerBuddy/tiger/course1/code/ /root/CompilerBuddy/user_environments/1888888888/course1/code/
# \cp -R /root/CompilerBuddy/tiger/course1/code/main.c /root/CompilerBuddy/user_environments/1888888888/course1/code/main.c
def copy_files(file_path):
    source_path = ORIGINAL_FILE_DIR+'/'
    target_path = BASE_DIR+file_path

    if not os.path.exists(target_path):
        os.makedirs(target_path)

    if os.path.exists(source_path):
        os.popen("\cp -R {0}. {1}".format(source_path,target_path))
        return 1
    else :
        return 0

def copy_files2(source_path,target_path):
    # source_path = ORIGINAL_FILE_DIR+'/'
    target_path = BASE_DIR+target_path

    if not os.path.exists(target_path):
        os.makedirs(target_path)
    if os.path.exists(source_path):
        os.popen("\cp -R {0}. {1}".format(source_path,target_path))
        return 1
    else :
        return 0

if __name__ == '__main__':
    # mobile = '15339087369'
    # file_path = '/user_environments/' + str(mobile)
    # copy_files(ORIGINAL_FILE_DIR,file_path)
    course_path = '/course1/code/'
    original_file_path = ORIGINAL_FILE_DIR + course_path  # /Users/zach/PycharmProjects/CompilerBuddy/tiger/course1/code/
    save_file_path = '/user_environments/1888888888/course1/code/'  # /user_environments/1888888888/course1/code/
    copy_files2(original_file_path, save_file_path)

