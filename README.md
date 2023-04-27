# 7 days trial in batch
This is a simple Batch application with a 7-day trial period. The trial period begins on the first launch of the application and expires after 7 days. After the trial period ends, the application will display a message indicating that the trial has expired.

This application is for educational purposes.
Program can be used for commercial purposes only with "REM PROGRAM MADE BY CODE613x ON GITUB AND CODE613 ON YOUTUBE." on the third line.

Info
To show days left to end of trial use this command.
```batch
  echo %trial_time%
```


To add days to trial use this command (change 10 to amount of days that you want to add).
```batch
set /a trial_time=trial_time+10
attrib -h "%datedir%"
attrib -h "%datedir%\date.txt"
(
echo %start_date%
echo %trial_time%
)>"%datedir%\date.txt"
attrib +h "%datedir%"
attrib +h "%datedir%\date.txt"
```
To remove days from trial use this command (change 10 to amount of days that you want to remove)
```batch
set /a trial_time=trial_time-10
if %trial_time% lss 0 set trial_time=0
echo %trial_time%
    attrib -h "%datedir%"
    attrib -h "%datedir%\date.txt"
    (
    echo %start_date%
    echo %trial_time%
    )>"%datedir%\date.txt"
    attrib +h "%datedir%"
    attrib +h "%datedir%\date.txt"
  ```

