@echo off
setlocal
for /f "tokens=3 skip=1" %%A in ('reg query %1 /v %2') do (set REG_DATA=%%A)
endlocal&set %3=%REG_DATA%
exit /b 0