::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkd7un6/+PJpkERNA==
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkd+uv44OSB7EgFUYI=
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk/+u36+++0qkIPQOEqbMHZ26Du
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkY+uHt6viyskkcQOdxfZfeug==
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzXy8mIrEsUU6w9eZu7
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzW4OSTqnkScOMmNo3aztQ=
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzLy8mIrEsUU6w9eZu7
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzJ6u2OsVkPTaw9eZu7
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzJ6u2OsVkPTdEFNo3aztQ=
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzP5ueCi0MuUeEwdouV2LWaQA==
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzC6uuVlkI5Vftxeo7Pug==
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkw6fvvzeWItngNYOsyfcHZ26Du
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkR+/74/7vW8gMZWO5f
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkR+/74/bvW8gMZWO5f
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkO7e/r4frJp1UYNA==
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkv7fzY4OSBq0oIRuMrcYDVlLaPNIA=
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkv7fzJ6u2OsVkPTaw9eZu7
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkP/Ofp7viE7EkRWII=
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkP/Ofp7OaO7EgFUYI=
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIkP/Ofp7OaO9BlTUfo6GA==
::fBE1pAF6MU+EWHreyGMiKzhbQQmDMm+/FIk77fzay8mIrEsUU6w9eZu7
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJHiW92E/JRZVQgCHLlebFLY/5+X27uSDp19QXeEwdsHS2bvu
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZksaGkrSXA==
::ZQ05rAF9IBncCkqN+0xwdVsEAlTMaiXqZg==
::ZQ05rAF9IAHYFVzEqQIROhh3QwmPPWW+A6d8
::eg0/rx1wNQPfEVWB+kM9LVsJDCWQP0i1C7gd5uz+/Yo=
::fBEirQZwNQPfEVWB+kM9LVsJDCWQP0i1C7gd5uz+/Yo=
::cRolqwZ3JBvQF1fEqQIROhh3QwmPPWW+A6d8
::dhA7uBVwLU+EWHeh1yI=
::YQ03rBFzNR3SWATE2mcTSA==
::dhAmsQZ3MwfNWATE2mcTSA==
::ZQ0/vhVqMQ3MEVWAtB9wAhpGQwrCH2O/CLJ8
::Zg8zqx1/OA3MEVWAtB9wATRwa2Q=
::dhA7pRFwIByZRRmi+1BwBRJXXguBNGKqRp0r2snSy4o=
::Zh4grVQjdCyDJHiW92E/JRZVQgCHLkK0FaEd5OT+/damsE4+W+8yeYHf36bAJfgWig==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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
set "TRANS_PERIOD=2"
set "PENDING_TIME=10"

call SetConfiguration.bat

if not exist "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\ArcCommander - Shortcut.lnk" (
	echo %date% %time% ArcCommander.bat: Please install ArcCommander with ArcInstaller
	pause
	exit
)

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

if defined DBG_ELAPSED_SECOND (
	reg query HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander /v ElapsedSecond
	if !errorlevel! neq 0 (
		call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ElapsedSecond REG_DWORD 0
	)
)

call GetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount PROCESS_COUNT
call GetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" SuspendCount SUSPEND_COUNT
call GetRegistrySZ.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" LogPath LOG_PATH
if defined DBG_HALT_MODE (call GetRegistrySZ.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" HaltMode HALT_MODE)
if defined DBG_ELAPSED_SECOND (call GetRegistrySZ.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ElapsedSecond ELAPSED_SECOND)
if defined LOG_INITIAL (
	echo %date% %time% ArcCommander.bat: PROCESS_COUNT = %PROCESS_COUNT%, SUSPEND_COUNT = %SUSPEND_COUNT%
	echo %date% %time% ArcCommander.bat: LOG_PATH = %LOG_PATH%
	echo %date% %time% ArcCommander.bat: INI_PATH = %INI_PATH%
	echo %date% %time% ArcCommander.bat: ELAPSED_SECOND = %ELAPSED_SECOND%
	echo %date% %time% ArcCommander.bat: HALT_MODE = %HALT_MODE%
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
	if defined DBG_RAID_LEVEL (set DESIRE.LEVEL=%%G) else (set MODE=%%G)
	set DESIRE.STATE=%%H
	set DESIRE.PI=%%I
:RESUME
	if defined LOG_RESUME (echo %date% %time% RESUME: CTL = !CTL!, LD = !LD!, CH = !CH!, PD = !PD!, TTL = !TTL!)
	if defined LOG_RAID_LEVEL (echo %date% %time% RESUME: DESIRE.LEVEL = !DESIRE.LEVEL!) else (echo %date% %time% RESUME: MODE = !MODE!)
	call GetLDConfig.bat !CTL! !LD! LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
	call GetPDConfig.bat !CTL! !CH! !PD! PD.STATE PD.SSD
	if defined DBG_GET_AD_CONFIG (call GetADConfig.bat !CTL! AD.TEMPERATURE)

	if defined LOG_RESUME (
		echo %date% %time% RESUME: DESIRE.STATE = !DESIRE.STATE!, DESIRE.PI = !DESIRE.PI!
		echo %date% %time% RESUME: LD.STATUS = !LD.STATUS!, PI.STATUS = !PI.STATUS!, LD.ARRAY = !LD.ARRAY!, LD.LEVEL = !LD.LEVEL!
 		echo %date% %time% RESUME: PD.STATE = !PD.STATE!, PD.SSD = !PD.SSD!
		echo %date% %time% RESUME: AD.TEMPERATURE = !AD.TEMPERATURE!
	)
	if defined DBG_RAID_LEVEL (
		if not "!DESIRE.LEVEL!" == "!LD.LEVEL!" (
			echo %date% %time% RESUME: LD.LEVEL !LD.LEVEL! does not coincide with DESIRE.LEVEL !DESIRE.LEVEL!
			pause
			exit
		)
	)
:ACTIVATE
	call GetTimeInSecond.bat START_TIME
	set /a STOP_TIME=!START_TIME!+!TTL!
	if defined DBG_ELAPSED_SECOND (set /a STOP_TIME=!STOP_TIME!-!ELAPSED_SECOND!)
	if defined DBG_ACTIVATE (echo %date% %time% ACTIVATE: START_TIME = !START_TIME!, STOP_TIME = !STOP_TIME!, TTL = !TTL!)
	call :TRANS_STATE
:REPORT
	call :GET_LOG !PROCESS_COUNT! !SUSPEND_COUNT!
:SUSPEND
	if !SUSPEND_COUNT! lss !NUM! (
		set /a SUSPEND_COUNT+=1
		if !SUSPEND_COUNT! equ !NUM! (
			set "SUSPEND_COUNT=0"
			set /a PROCESS_COUNT+=1
			if defined DBG_ELAPSED_SECOND (echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ElapsedSecond REG_DWORD 0)
		)
		if defined LOG_SUSPEND (echo %date% %time% SUSPEND: SUSPEND_COUNT = !SUSPEND_COUNT!, NUM = !NUM!)
		echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" SuspendCount REG_DWORD !SUSPEND_COUNT!
		echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount REG_DWORD !PROCESS_COUNT!
		if defined LOG_SUSPEND (echo %date% %time% SUSPEND: System will halt after %HALT_TIMER% seconds)
		if defined DBG_SHUTDOWN_REBOOT (
			timeout /nobreak %HALT_TIMER%
			if defined DBG_RAID_LEVEL (
				shutdown -%HALT_MODE% -t 0
			) else (
				shutdown -r -t 0
			)	
			exit /b 0
		) else (
			goto :INITIAL
		)
	)
	set "SUSPEND_COUNT=0"
	set /a PROCESS_COUNT+=1
	if defined LOG_SUSPEND (echo %date% %time% SUSPEND: PROCESS_COUNT = !PROCESS_COUNT!)
)
:ERROR_END
echo %date% %time% ERROR_END: RTN = !RTN!
if defined DBG_ERROR_END (echo %date% %time% ERROR_END: Clear counter)
echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" SuspendCount REG_DWORD 0
echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount REG_DWORD 0
if defined DBG_ELAPSED_SECOND (echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ElapsedSecond REG_DWORD 0)
if exist "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\ArcCommander - Shortcut.lnk" (
	if defined DBG_ERROR_END (echo %date% %time% ERROR_END: Delete startup-link)
	del "c:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\ArcCommander - Shortcut.lnk"
)
pause
exit /b %RTN%

rem ****************
rem * Subrountines *
rem ****************

:GET_LOG
setlocal
set PROCESS_COUNT=%1
set SUSPEND_COUNT=%2
set "RTN="
if defined LOG_GET_LOG (echo %date% %time% GET_LOG: PROCESS_COUNT = %PROCESS_COUNT%, SUSPEND_COUNT = %SUSPEND_COUNT%)
mkdir %LOG_PATH%\Log%PROCESS_COUNT%-%SUSPEND_COUNT%
arcconf savesupportarchive %LOG_PATH%\Log%PROCESS_COUNT%-%SUSPEND_COUNT%
if defined DBG_GET_AD_CONFIG (echo %date% %time% Temperature: !AD.TEMPERATURE! > %LOG_PATH%\Tmp%PROCESS_COUNT%-%SUSPEND_COUNT%.log)
exit /b 0

:TRANS_STATE
call :!PD.STATE!_TO_!DESIRE.STATE! !CTL! !LD! !CH! !PD! !DESIRE.LEVEL!
call :!PI.STATUS!_TO_!DESIRE.PI! !CTL! !LD! !CH! !PD! !DESIRE.LEVEL!
if !errorlevel! neq 0 set /a "RTN|=!errorlevel!"

call GetLDConfig.bat !CTL! !LD! LD.STATUS PI.STATUS LD.ARRAY LD.LEVEL
call GetPDConfig.bat !CTL! !CH! !PD! PD.STATE PD.SSD

call GetTimeInSecond.bat NOW_TIME

if defined DBG_TRANS_STATE (echo %date% %time% TRANS_STATE: NOW_TIME = !NOW_TIME!, STOP_TIME = !STOP_TIME!)

timeout /nobreak %TRANS_PERIOD% > nul
if !NOW_TIME! lss !STOP_TIME! goto :TRANS_STATE
goto :eof

rem ############
rem # PD state #
rem ############
:Rebuilding_TO_Online
if defined LOG_DO_NOTHING (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: Do nothing, halt progressing)
timeout /nobreak %PENDING_TIME% > nul
goto :TRANS_STATE

:Online_TO_Online
:Failed_TO_Failed
:Rebuilding_TO_Rebuilding

if defined LOG_DO_NOTHING (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: Do nothing)
exit /b 0

:Online_TO_Failed <CTL> <LD> <CH> <PD>
:Rebuilding_TO_Failed <CTL> <LD> <CH> <PD>
:Online_TO_Rebuilding <CTL> <LD> <CH> <PD>
setlocal
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

:Failed_TO_Rebuilding <CTL> <LD> <CH> <PD>
:Failed_TO_Online
setlocal
set CTL=%1
set LD=%2
set CH=%3
set PD=%4
if defined LOG_SET_REBUILD (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: Ready to reboot)

if defined DBG_ELAPSED_SECOND (
	timeout /nobreak %TRANS_PERIOD% > nul
	call GetTimeInSecond.bat NOW_TIME
	rem set /a ELAPSED_SECOND=!NOW_TIME!-!START_TIME!
	set /a ELAPSED_SECOND+=!NOW_TIME!
	set /a ELAPSED_SECOND=!ELAPSED_SECOND!-!START_TIME!
	echo %date% %time% Failed_TO_Rebuilding: STAR_TIME = !START_TIME!, NOW_TIME = !NOW_TIME!, ELAPSED_SECOND = !ELAPSED_SECOND!
	echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ElapsedSecond REG_DWORD !ELAPSED_SECOND!
	echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount REG_DWORD !PROCESS_COUNT!
)
if defined DBG_SET_REBUILD (shutdown -r -t 30)
pause
exit

:Ready_TO_Online <CTL> <LD> <CH> <PD> <LEVEL>
:Ready_TO_Failed <CTL> <LD> <CH> <PD> <LEVEL>
set CTL=%1
set LD=%2
set CH=%3
set PD=%4
set LEVEL=%5
if defined LOG_CREATE_LD (echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: LEVEL = %LEVEL%)
if %LEVEL% equ 60 (
	arcconf.exe create %CTL% logicaldrive MAX 60 %CH% 0 %CH% 1 %CH% 2 %CH% 3 %CH% 4 %CH% 5 %CH% 6 %CH% 7 noprompt
) else (
	echo %date% %time% !PD.STATE!_TO_!DESIRE.STATE!: Please create VD before testing
	pause
	exit 
)

exit /b 0

rem #############
rem # PI status #
rem #############
:InProgress_TO_InProgress
:Completed_TO_Completed 

if defined LOG_DO_NOTHING (echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: Do nothing)
exit /b 0

:Completed_TO_InProgress <CTL> <LD> <CH> <PD> <LEVEL>
:Queued_TO_InProgress <CTL> <LD> <CH> <PD> <LEVEL>
:NA_TO_InProgress <CTL> <LD> <CH> <PD> <LEVEL>
setlocal
set "RTN="
set CTL=%1
set LD=%2
set CH=%3
set PD=%4
set LEVEL=%5
if defined LOG_KICK_CC (echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: Kicking Consistency Check)
arcconf.exe consistencycheck %CTL% on
set RTN=%errorlevel%
if defined LOG_KICK_CC (echo %date% %time% RTN = %RTN%)
if %RTN% equ 1 (echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: !CH!:!LD! Checking consistency)
if %RTN% equ 2 (echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: !CH!:!LD! Command abort) else (exit /b 1)
exit /b 0

:InProgress_TO_Completed <CTL> <LD> <CH> <PD> <LEVEL>
:Queued_TO_Completed <CTL> <LD> <CH> <PD> <LEVEL>
:NA_TO_Completed <CTL> <LD> <CH> <PD> <LEVEL>
setlocal
set "RTN="
set CTL=%1
set LD=%2
set CH=%3
set PD=%4
set LEVEL=%5
if defined LOG_HALT_CC (echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: Halt Consistency Check)
arcconf.exe consistencycheck %CTL% off
set RTN=%errorlevel%
if defined LOG_HALT_CC (echo %date% %time% RTN = %RTN%)
if %RTN% equ 0 (echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: !CH!:!LD! Consistency Check halts)
if %RTN% equ 2 (
	echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: !CH!:!LD! Repetitive PI status, progress continues
	timeout /nobreak %PENDING_TIME%
) else (
	echo %date% %time% !PI.STATUS!_TO_!DESIRE.PI!: !CH!:!LD! Reboot to update PI status
	if defined DBG_ELAPSED_SECOND (
		echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ElapsedSecond REG_DWORD !ELAPSED_SECOND!
		echo y|call SetRegistry.bat "HKEY_LOCAL_MACHINE\SOFTWARE\NECTA\ArcCommander" ProcessCount REG_DWORD !PROCESS_COUNT!
	)
	shutdown -r -t %PENDING_TIME%
	pause	
	exit
)
exit /b 0