@echo off
echo [INFO] Install to local repository.
call mvn clean install -Dmaven.test.skip=true
pause