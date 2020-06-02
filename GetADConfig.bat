@echo off
setlocal enabledelayedexpansion
set CTL=%1

if not defined DBG_GET_AD_CONFIG (
	set LOG_GET_AD_CONFIG=1
)

if defined LOG_GET_AD_CONFIG (echo %date% %time% GetADConfig.bat: CTL = %CTL%)

for /f "tokens=1-11 skip=7" %%A in ('arcconf.exe getconfig %CTL% ad') do (
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
	if defined LOG_GET_AD_CONFIG (echo %date% %time% GetADConfig.bat: !WORD1! !WORD2! !WORD3! !WORD4! !WORD5! !WORD6! !WORD7! !WORD8! !WORD9! !WORD10! !WORD11!)
	if "!WORD1!" == "Temperature" (
		set AD.TEMPERATURE=!WORD3! !WORD4! !WORD5! !WORD6!
		goto :BREAK_GET_AD_CONFIG
	)

)
:BREAK_GET_AD_CONFIG
if defined LOG_GET_LD_CONFIG (echo %date% %time% GetADConfig.bat: AD.TEMPERATURE = !AD.TEMPERATURE!)

:ERROR_END
endlocal&set %2=%AD.TEMPERATURE%

exit /b 0

****************
* Subrountines *
****************