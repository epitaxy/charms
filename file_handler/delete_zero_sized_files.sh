#!/bin/sh
# delete zero-sized file in the current path (directory)
find . -size 0 -print -delete
