@echo off
REM PROGRAM MADE BY CODE613x ON GITUB AND CODE613 ON YOUTUBE.

REM Please replace 'folder name' with the name of your actual folder.
set datedir=%appdata%\Foldername
REM Please substitute the number '7' with the default value of the trial period.
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

REM Add your code for what should happen if the trial period has not yet expired.

goto Yourprogram
)

REM Add your code for what should happen if the trial period has expired.

Pause 
exit

:Yourprogram

pause
exit
 
