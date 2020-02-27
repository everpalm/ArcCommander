@echo off
setlocal enabledelayedexpansion
set CTL=%1
set LD=%2

if not defined DBG_GET_LD_CONFIG (
	set LOG_GET_LD_CONFIG=1
)

if defined LOG_GET_LD_CONFIG (echo %date% %time% GetLDConfig.bat: CTL = %CTL%, LD = %LD%)

for /f "tokens=1-11 skip=7" %%A in ('arcconf.exe getconfig %CTL% ld %LD%') do (
	set WORD1=%%A
	set WORD2=%%B
	set WORD3=%%C
	set WORD4=%%D
	set WORD5=%%E
	set WORD6=%%F
	set WORD7=%%G
	set WORD8=%%H
	set WORD9=%%I
	set WORD10=%%J
	set WORD11=%%K
	if defined LOG_GET_LD_CONFIG (echo %date% %time% GetLDConfig.bat: !WORD1! !WORD2! !WORD3! !WORD4! !WORD5! !WORD6! !WORD7! !WORD8! !WORD9! !WORD10! !WORD11!)
	if "!WORD1!" == "Array" (set LD.ARRAY=!WORD3!)
	if "!WORD1!" == "RAID" (set LD.LEVEL=!WORD4!)
	if "!WORD1!" == "Status" (
		set LD.STATUS=!WORD6!
		if "!LD.STATUS!" == "Interim" (set LD.STATUS=!WORD6! !WORD7!)
		if "!LD.STATUS!" == "Optimal(Background" (set LD.STATUS=!WORD6! !WORD7! !WORD8! !WORD9! !WORD10! !WORD11!)
	)
	if "!WORD1!" == "Parity" (
		set PI.STATUS=!WORD5!
		if "!PI.STATUS!" == "In" (set PI.STATUS=!WORD5! !WORD6!)
		goto :BREAK_GET_LD_CONFIG
	)
)
:BREAK_GET_LD_CONFIG
if defined LOG_GET_LD_CONFIG (echo %date% %time% GetLDConfig.bat: LD.STATUS = !LD.STATUS!, PI.STATUS = !PI.STATUS!, LD.ARRAY = !LD.ARRAY!, LD.LEVEL = !LD.LEVEL!)
if "!LD.STATUS!" == "" (set LD.STATUS=NA)
if "!PI.STATUS!" == "" (set PI.STATUS=NA)
if "!LD.ARRAY!" == "" (set LD.ARRAY=NA)
if "!LD.LEVEL!" == "" (set LD.LEVEL=NA)

:ERROR_END
endlocal&set %3=%LD.STATUS%&set %4=%PI.STATUS%&set %5=%LD.ARRAY%&set %6=%LD.LEVEL%

exit /b 0

****************
* Subrountines *
****************