#!/bin/bash
# delete empty folders (or directories) from current path
find . -depth -type d -empty -delete
