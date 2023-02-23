#!/bin/bash
set -e
git checkout main
if [[ -d /tmp/docs ]];then
rm -rf /tmp/docs/
fi
mkdir /tmp/docs
mdbook build -d /tmp/docs
git checkout gh-page
mv /tmp/docs .
git add *
git commit -m "[build] update data from main"
git push origin gh-page:gh-page -f
