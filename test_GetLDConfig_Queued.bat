@echo off
rem 
rem Suite 1 
rem
setlocal
call GetLDConfig.bat 1 0 LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
echo|set /p=Case 1.1: LD.STATUS = %LD.STATUS%
if "%LD.STATUS%" == "Optimal" (echo ...PASS ) else (echo ...NG)
echo|set /p=Case 1.2: PI.STATUS = %PI.STATUS%
if "%PI.STATUS%" == "Queued" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 1.3: LD.ARRAY = %LD.ARRAY%
if "%LD.ARRAY%" == "0" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 1.4: LD.LEVEL = %LD.LEVEL%
if "%LD.LEVEL%" == "5" (echo ...PASS) else (echo ...NG)
endlocal

rem 
rem Suite 2
rem
setlocal
call GetLDConfig.bat 0 0 LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
echo|set /p=Case 2.1: LD.STATUS = %LD.STATUS%
if "%LD.STATUS%" == "NA" (echo...PASS) else (echo ...NG)
echo|set /p=Case 2.2: PI.STATUS = %PI.STATUS%
if "%PI.STATUS%" == "NA" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 2.3: LD.ARRAY = %LD.ARRAY%
if "%LD.ARRAY%" == "NA" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 2.4: LD.LEVEL = %LD.LEVEL%
if "%LD.LEVEL%" == "NA" (echo ...PASS) else (echo ...NG)
endlocal

rem 
rem Suite 3
rem
setlocal
call GetLDConfig.bat 0 1 LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
echo|set /p=Case 3.1: LD.STATUS = %LD.STATUS%
if "%LD.STATUS%" == "NA" (echo ...PASS ) else (echo ...NG)
echo|set /p=Case 3.2: PI.STATUS = %PI.STATUS%
if "%PI.STATUS%" == "NA" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 3.3: LD.ARRAY = %LD.ARRAY%
if "%LD.ARRAY%" == "NA" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 3.4: LD.LEVEL = %LD.LEVEL%
if "%LD.LEVEL%" == "NA" (echo ...PASS) else (echo ...NG)
endlocal

rem 
rem Suite 4
rem
setlocal
call GetLDConfig.bat 0 0 LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
echo|set /p=Case 4.1: LD.STATUS = %LD.STATUS%
if "%LD.STATUS%" == "NA" (echo ...PASS ) else (echo ...NG)
echo|set /p=Case 4.2: PI.STATUS = %PI.STATUS%
if "%PI.STATUS%" == "NA" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 4.3: LD.ARRAY = %LD.ARRAY%
if "%LD.ARRAY%" == "NA" (echo ...PASS) else (echo ...NG)
echo|set /p=Case 4.4: LD.LEVEL = %LD.LEVEL%
if "%LD.LEVEL%" == "NA" (echo ...PASS) else (echo ...NG)
endlocal
pause