#!/usr/bin/env sh

# abort on errors
set -e

# navigate into the build output directory
cd dist/spa

# if you are deploying to a custom domain
echo 'www.mylifeinn.tk' > CNAME

git init
git add -A
git commit -m 'deploy'

git push -f git@github.com:i-love-vue/vue-toolbox.git master:gh-pages

cd -
