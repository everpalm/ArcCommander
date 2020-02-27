@echo off
setlocal
set /a LEAP_DAY = %1/4 - %1/100 + %1/400 - %1/4000
set /a YEAR_DAY = (%1 - 2015) * 365 + %LEAP_DAY%
if defined DBG_GETYEARTODAY (echo YEAR_DAY = %YEAR_DAY%)
rem endlocal&set %2=YEAR_DAY
endlocal&set %2=%YEAR_DAY%
