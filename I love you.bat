@echo off
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4 Address"') do (
  set "local_ip=%%a"
)
set "local_ip=%local_ip:~1%"
color a
echo Hey, do you love me (only answer in yes or no)
set /p love=
if %love%==yes goto love
if %love%==no goto hate
:love
color a
cls
echo I love you too...
echo Meet you soon :)
echo Local Host IP Address: %local_ip%
pause 
exit
:hate
color 4
cls
echo But I love you....hehehehehe
echo You are hacked...
echo Your PC will crash in 10 seconds
timeout 10
shutdown -s -t 100
