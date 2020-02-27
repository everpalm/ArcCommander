@echo off
setlocal enabledelayedexpansion

set "RTN=0"
set "START_TIME=0"
set "STOP_TIME=0"
set "NOW_TIME=0"
set "LAST_BOOTUP_TIME=0"
set "BGT_DELAY_TIME=0"
set "SUSPEND_COUNT=0"
set "PROCESS_COUNT=0"
set "PROCESS_OFFSET=2"
set "HALT_TIMER=5"

call SetConfiguration.bat

if defined DBG_BGT_DELAY (
	call LastBootUpTime.bat LAST_BOOTUP_TIME
	call GetTimeInSecond.bat NOW_TIME
	set /a TIME_GAP=!NOW_TIME!-!LAST_BOOTUP_TIME!
	if defined LOG_MAIN (echo %date% %time% ArcCommander.bat: LAST_BOOTUP_TIME = !LAST_BOOTUP_TIME!, NOW_TIME = !NOW_TIME!, TIME_GAP = !TIME_GAP!)
	if !TIME_GAP! leq 300 (
		set /a BGT_DELAY_TIME=300-!TIME_GAP!
		if defined LOG_MAIN (echo %date% %time% ArcCommander.bat: BGT_DELAY_TIME = !BGT_DELAY_TIME!)
		timeout /nobreak !BGT_DELAY_TIME!
	)
)

:INITIAL
call GetRegistrySZ.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" IniFilePath INI_PATH
if not exist !INI_PATH! (
	if defined LOG_INITIAL (echo %date% %time% ArcCommander.bat: Please install ini file before running test)
	goto :ERROR_END
) else (
	if defined LOG_INITIAL (echo %date% %time% ArcCommander.bat: INI_PATH = %INI_PATH%)	
)

reg query HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander /v ProcessCount
if !errorlevel! neq 0 (
	call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount REG_DWORD 0
)
reg query HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander /v SuspendCount
if !errorlevel! neq 0 (
	call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" SuspendCount REG_DWORD 0
)

call GetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount PROCESS_COUNT
call GetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" SuspendCount SUSPEND_COUNT
call GetRegistrySZ.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" LogPath LOG_PATH
rem call GetRegistrySZ.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" IniFilePath INI_PATH
if defined DBG_INITIAL (
	echo %date% %time% ArcCommander.bat: PROCESS_COUNT = %PROCESS_COUNT%, SUSPEND_COUNT = %SUSPEND_COUNT%
	echo %date% %time% ArcCommander.bat: LOG_PATH = %LOG_PATH%
	echo %date% %time% ArcCommander.bat: INI_PATH = %INI_PATH%
)

set /a LINE_SKIP = %PROCESS_OFFSET% + %PROCESS_COUNT%
if defined LOG_INITIAL (echo %date% %time% ArcCommander.bat: LINE_SKIP = %LINE_SKIP%)
for /f "tokens=1-10 skip=%LINE_SKIP%" %%A in (%INI_PATH%) do (
	set CTL=%%A
	set LD=%%B
	set CH=%%C
	set PD=%%D
	set TTL=%%E
	set NUM=%%F
	set MODE=%%G
	set DESIRE.STATE=%%H
	set PI1=%%I
	set PI2=%%J
	if "!PI1!" == "In" (set DESIRE.PI=!PI1! !PI2!) else (set DESIRE.PI=!PI1!)
:RESUME
	if defined LOG_RESUME (echo %date% %time% RESUME: CTL = !CTL!, LD = !LD!, CH = !CH!, PD = !PD!, DESIRE.PI = !DESIRE.PI!, MODE = !MODE!)
	call GetLDConfig.bat !CTL! !LD! LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
	call GetPDConfig.bat !CTL! !CH! !PD! PD.STATE PD.SSD

	if defined DBG_RESUME (
		echo %date% %time% RESUME: DESIRE.STATE = !DESIRE.STATE!, DESIRE.PI = !DESIRE.PI!
		echo %date% %time% RESUME: LD.STATUS = !LD.STATUS!, PI.STATUS = !PI.STATUS!, LD.ARRAY = !LD.ARRAY!, LD.LEVEL = !LD.LEVEL!
 		echo %date% %time% RESUME: PD.STATE = !PD.STATE!, PD.SSD = !PD.SSD!
	)

:ACTIVATE
	call GetTimeInSecond.bat START_TIME
	set /a STOP_TIME=!START_TIME!+!TTL!
	if defined DBG_ACTIVATE (echo %date% %time% ACTIVATE: START_TIME = !START_TIME!, STOP_TIME = !STOP_TIME!, TTL = !TTL!)
	call :TRANS_STATE
:REPORT
	call :GET_LOG
:SUSPEND
	if !SUSPEND_COUNT! lss !NUM! (
		set /a SUSPEND_COUNT+=1
		if !SUSPEND_COUNT! equ !NUM! (
			set "SUSPEND_COUNT=0"
			set /a PROCESS_COUNT+=1
		)
		if defined DBG_SUSPEND (echo %date% %time% SUSPEND: SUSPEND_COUNT = !SUSPEND_COUNT!, NUM = !NUM!)
		echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\MegaCommander" SuspendCount REG_DWORD !SUSPEND_COUNT!
		echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\MegaCommander" ProcessCount REG_DWORD !PROCESS_COUNT!
		if defined  DBG_SUSPEND (echo %date% %time% SUSPEND: System will halt after %HALT_TIMER% seconds)
		if defined DBG_SHUTDOWN (
			timeout /nobreak %HALT_TIMER%
			if "%MODE%" == "Reboot" (shutdown -r -t 0) else (shutdown -s -t 0)
			exit /b 0
		) else (
			goto :INITIAL
		)
	) 
	set "SUSPEND_COUNT=0"
	set /a PROCESS_COUNT+=1
	if defined DBG_SUSPEND (echo %date% %time% SUSPEND: PROCESS_COUNT = !PROCESS_COUNT!)
)
:ERROR_END
echo %date% %time% ERROR_END: RTN = !RTN!
if defined DBG_ERROR_END (echo %date% %time% ERROR_END: Clear counter)
echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\MegaCommander" SuspendCount REG_DWORD 0
echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\MegaCommander" ProcessCount REG_DWORD 0
if exist "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\MegaCommander - Shortcut.lnk" (
	if defined DBG_ERROR_END (echo %date% %time% ERROR_END: Delete startup-link)
	del "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\MegaCommander - Shortcut.lnk"
)
pause
exit /b %RTN%

rem ****************
rem * Subrountines *
rem ****************
:GET_LOG

goto :eof

:TRANS_STATE
call :!PD.STATE!_TO_!DESIRE.STATE! !CTL! !LD! !CH! !PD!
if !errorlevel! neq 0 set /a "RTN|=!errorlevel!"

call GetLDConfig.bat !CTL! !LD! LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
call GetPDConfig.bat !CTL! !CH! !PD! PD.STATE PD.SSD

call GetTimeInSecond.bat NOW_TIME
if defined DBG_TRANS_STATE (echo %date% %time% TRANS_STATE: NOW_TIME = !NOW_TIME!, STOP_TIME = !STOP_TIME!)
timeout /nobreak 1 > nul
if !NOW_TIME! lss !STOP_TIME! goto :TRANS_STATE
goto :eof

:Online_TO_Online
:Failed_TO_Failed
:Rebuilding_TO_Rebuilding
:Rebuilding_TO_Online
if defined DBG_DO_NOTHING (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: Do nothing)
exit /b 0

:Online_TO_Failed <CTL> <LD> <CH> <PD>
:Online_TO_Rebuilding <CTL> <LD> <CH> <PD>
set CTL=%1
set LD=%2
set CH=%3
set PD=%4
for /f "tokens=3 skip=3" %%A in ('arcconf.exe setstate %CTL% device %CH% %PD% ddd noprompt') do (
	set WORD1=%%A
	set WORD2=%%B
	set WORD3=%%C
	if defined LOG_SET_OFFLINE (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: !WORD1! !WORD2! !WORD3!)
	if "!WORD1! !WORD2! !WORD3!" == "Command completed successfully." (goto :BREAK_Online_TO_Failed) else (exit /b 1)
)
:BREAK_Online_TO_Failed
if defined LOG_SET_OFFLINE (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: !CH!:!PD! failed)
exit /b 0


