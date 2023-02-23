#!/bin/bash
set -e
git checkout main
mkdir docs
mdbook build -d docs
git checkout gh-page
git add *
git commit -m "[build] update data from main"
git push origin gh-page:gh-page -f
