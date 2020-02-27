@echo off
setlocal
for /f "tokens=3 skip=1" %%A in ('reg query %1 /v %2') do (set REG_DATA=%%A)
rem if "%REG_DATA%" == "0x0" (
 	set REG_DATA=%REG_DATA:~2%
rem ) else (
	set /a REG_DATA=0x%REG_DATA%
rem )
rem endlocal&set %3=%REG_DATA:~2%
endlocal&set %3=%REG_DATA%
exit /b 0