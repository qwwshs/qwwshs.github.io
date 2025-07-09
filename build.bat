@echo off

echo cd
git add -A
git commit -m "deploy"
git push -f git@github.com:github.com/qwwshs/qwwshs.github.io.git master:main
cd -