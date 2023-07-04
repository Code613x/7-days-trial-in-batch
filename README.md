# 7 days trial in batch

> __Note__ 
> **If you are utilizing my program for commercial purposes, kindly provide attribution to my GitHub account.**

> __Warning__ 
> **I hereby declare that I am not liable for any damages caused by the program. If you experience any problems with my code, feel free to reach out to me on Discord.**
> 
## About project

This Batch application includes a 7-day trial period that commences on the initial launch of the program and concludes either after 7 days or upon manual expiration, whichever comes first.

## Contact
In case you require any assistance with your project, please do not hesitate to contact me on Discord.
**Code613**

## Code
To view the number of days remaining until the end of the trial period, please use this command.
```batch
echo %trial_time%
```


To add days to the trial period, please use this command (replace '10' with the desired number of days to be added).
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
To reduce the length of the trial period, please use this command (substitute '10' with the desired number of days to be removed).
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

