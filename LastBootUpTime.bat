@echo off
rem ************************
rem * Get Last Bootup Time *
rem ************************
setlocal
if not defined DBG_LAST_BOOTUP_TIME (set DBG_LAST_BOOTUP_TIME=1)
for /f "tokens=1 delims=." %%A in ('wmic os get lastbootuptime ^|findstr .') do (set N=%%A)
set SYS_YEAR=%N:~0,4%
set /a SYS_MONTH = 1%N:~4,2% - 100
set /a SYS_DAY = 1%N:~6,2% - 100
set /a SYS_HOUR = 1%N:~8,2% - 100
set /a SYS_MIN = 1%N:~10,2% - 100
set /a SYS_SEC = 1%N:~12,2% - 100

call GetYearToDay.bat SYS_YEAR YEAR_DAY
call GetMonthToDay.bat SYS_YEAR SYS_MONTH MONTH_DAY

set /a TOTAL_DAY = %MONTH_DAY% + %YEAR_DAY% + %SYS_DAY%
set /a TOTAL_SEC = %TOTAL_DAY% * 86400 + %SYS_HOUR% * 3600 + %SYS_MIN% * 60 + %SYS_SEC%

if defined DBG_LAST_BOOTUP_TIME (echo %date% %time% LastBootUpTime.bat: WMIC_YEAR = %SYS_YEAR%, WMIC_MONTH = %SYS_MONTH%, WMIC_DAY = %SYS_DAY%, WMIC_HOUR = %SYS_HOUR%)
if defined DBG_LAST_BOOTUP_TIME (echo %date% %time% LastBootUpTime.bat: TOTAL_SEC = %TOTAL_SEC%)
endlocal&set %1=%TOTAL_SEC%
exit /b 0
