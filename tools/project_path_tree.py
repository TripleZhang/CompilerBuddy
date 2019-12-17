import os
import os.path
from Compiler_teaching_platform.settings import BASE_DIR
def dfs_showdir(path, depth):
    if depth == 0:
        print("root:[" + path + "]")

    for item in os.listdir(path):
        # if '.git' not in item and '.css' not in item:
        if '.py' in item or '.' not in item:
            if '.pyc' not in item:
                print("| " * depth + "+--" + item)

                newitem = path +'/'+ item
                if os.path.isdir(newitem):
                    dfs_showdir(newitem, depth +1)

if __name__ == '__main__':
    dfs_showdir(BASE_DIR, 0)