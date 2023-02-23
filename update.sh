#!/bin/bash
set -e
git checkout main
mdbook build -d .
git checkout gh-page
git add *
git commit -m "[build] update data from main"
git push origin gh-page:gh-page
