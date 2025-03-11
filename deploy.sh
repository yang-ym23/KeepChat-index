#/bin/bash
set -e
set -x

# if remote `gitlab` does not exist, create it and point to git@git.tsinghua.edu.cn:thuse-course/course-index.git
if ! git remote | grep -q gitlab; then
  git remote add gitlab git@github.com:yang-ym23/KeepChat-index.git
fi

# push to remote `gitlab`
git checkout gh-pages
git pull origin gh-pages
git push gitlab gh-pages
git checkout main
