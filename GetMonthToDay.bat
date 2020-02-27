@echo off
rem *************************
rem * %1 - Year, %2 - Month *
rem *************************
setlocal
if %2 equ "1" (
	set LEAP_DAY=0
)

set /a DUMMY_YEAR = %1 %% 4
if %DUMMY_YEAR% equ 0 (
	set /a DUMMY_YEAR = %1 %% 100
	goto :LEAP_100
) else (
	goto :NO_LEAP
)

:LEAP_100
if %DUMMY_YEAR% neq 0 (
	set /a DUMMY_YEAR = %1 %% 400
	goto :LEAP_400
) else (
	goto :NO_LEAP
)

:LEAP_400
if %DUMMY_YEAR% equ 0 (
	goto :CHECK_LEAP
) else (
	goto :NO_LEAP
)

:LEAP_100
if %DUMMY_YEAR% neq 0 (
	set /a DUMMY_YEAR = %1 %% 100
	goto :LEAP_400
) else (
	set LEAP_DAY=30
	goto :DISPLAY_LEAP
)

:LEAP_400
if %DUMMY_YEAR% neq 0 (
	set /a DUMMY_YEAR = %1 %% 400
	goto :LEAP_CHECK
) else (
	set LEAP_DAY=30
	goto :DISPLAY_LEAP
)

:NO_LEAP
if %2 equ 1 set LEAP_DAY=0
if %2 equ 2 set LEAP_DAY=31
if %2 equ 3 set LEAP_DAY=59
if %2 equ 4 set LEAP_DAY=90
if %2 equ 5 set LEAP_DAY=120
if %2 equ 6 set LEAP_DAY=151
if %2 equ 7 set LEAP_DAY=181
if %2 equ 8 set LEAP_DAY=212
if %2 equ 9 set LEAP_DAY=243
if %2 equ 10 set LEAP_DAY=273
if %2 equ 11 set LEAP_DAY=304
if %2 equ 12 set LEAP_DAY=334
goto :DISPLAY_LEAP

:LEAP_CHECK
if %2 equ 1 set LEAP_DAY=0
if %2 equ 2 set LEAP_DAY=31
if %2 equ 3 set LEAP_DAY=60
if %2 equ 4 set LEAP_DAY=91
if %2 equ 5 set LEAP_DAY=121
if %2 equ 6 set LEAP_DAY=152
if %2 equ 7 set LEAP_DAY=182
if %2 equ 8 set LEAP_DAY=213
if %2 equ 9 set LEAP_DAY=244
if %2 equ 10 set LEAP_DAY=274
if %2 equ 11 set LEAP_DAY=305
if %2 equ 12 set LEAP_DAY=335

:DISPLAY_LEAP
endlocal&set %3=%LEAP_DAY%
