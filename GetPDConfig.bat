@echo off
setlocal enabledelayedexpansion
set CTL=%1
set CH=%2
set PD=%3

if not defined DBG_GET_PD_CONFIG (
	set LOG_GET_PD_CONFIG=1
)

if defined LOG_GET_PD_CONFIG (echo %date% %time% GetPDConfig.bat: CTL = %CTL%, CH = %CH%, LD = %LD%)

for /f "tokens=1-11 skip=6" %%A in ('arcconf.exe getconfig %CTL% pd %CH% %PD%') do (
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
	if defined LOG_GET_PD_CONFIG (echo %date% %time% GetPDConfig.bat: !WORD1! !WORD2! !WORD3! !WORD4! !WORD5! !WORD6! !WORD7! !WORD8! !WORD9! !WORD10! !WORD11!)
	if "!WORD1!" == "State" (set PD.STATE=!WORD3!)
	if "!WORD1!" == "SSD" (
		set PD.SSD=!WORD3!
		goto :BREAK_GET_PD_CONFIG
	)
)
:BREAK_GET_PD_CONFIG
if defined LOG_GET_PD_CONFIG (echo %date% %time% GetPDConfig.bat: PD.STATE = !PD.STATE!, PD.SSD = !PD.SSD!)
if "!PD.STATE!" == "" (set PD.STATE=NA)
if "!PD.SSD!" == "" (set PD.SSD=NA)

:ERROR_END
endlocal&set %4=%PD.STATE%&set %5=%PD.SSD%
exit /b 0

****************
* Subrountines *
****************
