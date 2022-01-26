import os
import shutil
import distutils
from distutils import dir_util
from config import FILES_TO_COPY, FILES_TO_EXCLUDE

REPO_DIR = os.path.dirname(os.path.abspath(__file__))
CUR_DIR = os.path.abspath(os.getcwd())

assert os.path.isdir(os.path.join(CUR_DIR, '.obsidian')), 'You must be in an Obsidian vault'

for f in FILES_TO_COPY:
    source = os.path.join(CUR_DIR, f)
    target = os.path.join(REPO_DIR, f)
    os.makedirs(os.path.dirname(target), exist_ok=True)
    if os.path.isfile(source):
        shutil.copy2(source, target)

    elif os.path.isdir(source):
        dir_util.copy_tree(source, target)

for f in FILES_TO_EXCLUDE:
    target = os.path.join(REPO_DIR, f)
    if os.path.isfile(target):
        os.remove(target)

    elif os.path.isdir(target):
        shutil.rmtree(target)
