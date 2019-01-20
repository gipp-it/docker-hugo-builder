from __future__ import with_statement
from fabric.api import *
from contextlib import contextmanager as _contextmanager


def push(msg):
    local('git add .; git commit -m msg')
    local('git push')
