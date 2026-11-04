@echo off
setlocal
cd /d "%~dp0"
git add -A
if errorlevel 1 goto error
git diff --cached --quiet
if errorlevel 1 (
  git commit -m "Update site source"
  if errorlevel 1 goto error
)
git push https://github.com/qwwshs/qwwshs.github.io.git HEAD:refs/heads/source
if errorlevel 1 goto error
echo Source uploaded. GitHub Actions will build and deploy the site.
exit /b 0
:error
echo Upload failed. Check the Git error above.
exit /b 1
