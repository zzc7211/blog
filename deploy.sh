#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
# npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

git config --global user.name "zhouzichun"
git config --global user.email "914880597@qq.com"

git init
git add -A
git commit -m "init"
git push -f https://zzc777:dcdd30ab3ea720c64d1ab9588fc08e7e@gitee.com/zzc777/zzc777.git master


cd -
rm -rf docs/.vuepress/dist

# 生成静态文件
npm run build
# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m "init"
git push -f https://zhouzichun:58920cf0649c21f08d699647cc2855f9@gitee.com/zhouzichun/zhouzichun.git master