@echo off

call GetYearToDay.bat 2019 YEAR_DAY
rem echo YEAR_DAY = %YEAR_DAY%
if %YEAR_DAY% equ 1949 (
	echo upper bound OK
) else (
	echo upper bound NG
)

call GetYearToDay.bat 2015 YEAR_DAY
rem echo YEAR_DAY = %YEAR_DAY%
if %YEAR_DAY% equ 488 (
	echo boundary OK
) else (
	echo boundary NG
)

call GetYearToDay.bat 2014 YEAR_DAY
rem echo YEAR_DAY = %YEAR_DAY%
if %YEAR_DAY% equ 123 (
	echo lower bound OK
) else (
	echo lower bound NG
)
exit /b 0
