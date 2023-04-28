@echo off
REM PROGRAM MADE BY CODE613x ON GITUB AND CODE613 ON YOUTUBE.

REM Replace folder name with your folder name
set datedir=%appdata%\Foldername
REM Replace the number 7 with the deafult value of the trial.
set trial_time_deafult=7
if not exist "%datedir%" (
  mkdir "%datedir%"
  attrib +h "%datedir%"
)
if not exist "%datedir%\date.txt" (
  (
  echo %date% 
  echo %trial_time_deafult%
  )>"%datedir%\date.txt"
  attrib +h "%datedir%\date.txt"
)

(
set /p start_date=
set /p trial_time=
)<"%datedir%\date.txt"

set /p start_date=<"%datedir%\date.txt"
for /f "tokens=1-3 delims=." %%a in ("%start_date%") do set start_date=%%c%%b%%a
for /f "tokens=1-3 delims=." %%a in ("%date%") do set current_date=%%c%%b%%a
set start_date=%start_date: =%
set current_date=%current_date: =%
set /a x=(%current_date%-%start_date%)
if %x% lss %trial_time% (

REM YOUR CODE IF THE TRIAL PEROID HAS NOT EXPIRED YET.

goto Yourprogram
)

REM YOUR CODE IF THE TRIAL HAS EXPIRED.

Pause 
exit

:Yourprogram

pause
exit
 
