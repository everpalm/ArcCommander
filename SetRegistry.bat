@echo off
setlocal
reg add %1 /v %2 /t %3 /d %4
if %errorlevel% neq 0 exit /b %errorlevel%
exit /b 0