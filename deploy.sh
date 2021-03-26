#!/bin/sh
set -e
hugo
cd public
git add -A
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
    msg="$*"
fi
git commit -m "$msg"
git push origin master