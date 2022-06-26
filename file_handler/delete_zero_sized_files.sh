#!/bin/sh
# delete zero-sized file in the current path
find . -size 0 -print -delete
