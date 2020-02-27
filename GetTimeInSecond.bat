@echo off
rem ***************************************
rem * Get system date and time in seconds *
rem ***************************************
setlocal
rem set "DBG_TIME=1"

for /f "tokens=1-3 delims=/" %%A in ('date /t') do (
	set SYS_MONTH=%%A
	set SYS_DAY=%%B
	set SYS_YEAR=%%C
)

for /f "tokens=1-3 delims=/:." %%A in ("%time%") do (
	set SYS_HOUR=%%A
	set SYS_MIN=%%B
	set SYS_SEC=%%C
)

set /a SYS_MONTH = 1%SYS_MONTH:~4,2% - 100
set /a SYS_DAY = 1%SYS_DAY% - 100

set /a SYS_MIN=1%SYS_MIN%-100
set /a SYS_SEC=1%SYS_SEC%-100

call GetYearToDay.bat SYS_YEAR YEAR_DAY
call GetMonthToDay.bat SYS_YEAR SYS_MONTH MONTH_DAY

set /a TOTAL_DAY = %MONTH_DAY% + %YEAR_DAY% + %SYS_DAY%
set /a TOTAL_SEC = %TOTAL_DAY% * 86400 + %SYS_HOUR% * 3600 + %SYS_MIN% * 60 + %SYS_SEC%

if defined DBG_TIME (
	echo SYS_YEAR = %SYS_YEAR%
	echo SYS_MONTH = %SYS_MONTH%
	echo SYS_DAY = %SYS_DAY%
	echo SYS_HOUR = %SYS_HOUR%
	echo SYS_MIN = %SYS_MIN%
	echo SYS_SEC = %SYS_SEC%
	echo TOTAL_DAY = %TOTAL_DAY%
	echo TOTAL_SEC = %TOTAL_SEC%
)
endlocal&set %1=%TOTAL_SEC%
exit /b 0