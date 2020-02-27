@echo off
set LOOP_COUNTER=0
:LOOP

call test_GetYearToDay.bat
timeout /nobreak 1 > nul
set /a LOOP_COUNTER+=1
echo LOOP_COUNTER = %LOOP_COUNTER%
echo:
goto :LOOP
