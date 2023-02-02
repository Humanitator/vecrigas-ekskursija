#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'New deployment'
git push -f git@github.com:Humanitator/vecrigas-ekskursija.git master:gh-pages

cd -