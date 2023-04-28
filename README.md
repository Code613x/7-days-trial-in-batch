# 7 days trial in batch

## About project
This Batch application includes a 7-day trial period that commences on the initial launch of the program and concludes either after 7 days or upon manual expiration, whichever comes first.
If you are utilizing my program for commercial purposes, kindly provide attribution to my GitHub account.
I hereby declare that I am not liable for any damages caused by the program.
## Contact
If you need help with your project you can write to me on discord
**Alt+f4#3704**

## Code
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

