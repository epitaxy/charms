#!/bin/bash
# delete empty folders (or directories) from current path
# 빈 폴더만 삭제한다.
find . -depth -type d -empty -delete
