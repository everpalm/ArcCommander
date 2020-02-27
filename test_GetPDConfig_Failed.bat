@echo off
rem 
rem Suite 1 
rem
setlocal
call GetPDConfig.bat 1 0 4 PD.STATE PD.SSD

echo|set /p=Case 1.1: PD.STATE = %PD.STATE%
if "%PD.STATE%" == "Failed" (echo ...PASS ) else (echo ...NG)

echo|set /p=Case 1.2: PD.SSD = %PD.SSD%
if "%PD.SSD%" == "No" (echo ...PASS) else (echo ...NG)
endlocal

rem 
rem Suite 2
rem
setlocal
call GetPDConfig.bat 0 0 4 PD.STATE PD.SSD

echo|set /p=Case 2.1: PD.STATE = %PD.STATE%
if "%PD.STATE%" == "NA" (echo...PASS) else (echo ...NG)

echo|set /p=Case 2.2: PD.SSD = %PD.SSD%
if "%PD.SSD%" == "NA" (echo ...PASS) else (echo ...NG)
endlocal

rem 
rem Suite 3
rem
setlocal
call GetPDConfig.bat 1 1 4 PD.STATE PD.SSD
echo|set /p=Case 3.1: PD.STATE = %PD.STATE%
if "%PD.STATE%" == "NA" (echo ...PASS ) else (echo ...NG)
echo|set /p=Case 3.2: PD.SSD = %PD.SSD%
if "%PD.SSD%" == "NA" (echo ...PASS) else (echo ...NG)
endlocal

rem 
rem Suite 4
rem
setlocal
call GetPDConfig.bat 1 0 0 PD.STATE PD.SSD
echo|set /p=Case 4.1: PD.STATE = %PD.STATE%
if "%PD.STATE%" == "NA" (echo ...PASS ) else (echo ...NG)
echo|set /p=Case 4.2: PD.SSD = %PD.SSD%
if "%PD.SSD%" == "NA" (echo ...PASS) else (echo ...NG)
endlocal
pause