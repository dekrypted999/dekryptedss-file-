@echo off
title IP Mega Tool
color 0a

:menu
cls
echo ===============================
echo       IP MEGA TOOL 3000
echo ===============================
echo [1] Show my public IP
echo [2] Lookup info for an IP
echo [3] Ping an IP
echo [4] Traceroute to IP
echo [5] Exit
echo ===============================
set /p choice="Choose an option: "

if "%choice%"=="1" goto myip
if "%choice%"=="2" goto lookup
if "%choice%"=="3" goto pingip
if "%choice%"=="4" goto traceip
if "%choice%"=="5" exit
goto menu

:myip
cls
echo Your public IP is:
curl -s https://api.ipify.org
echo.
pause
goto menu

:lookup
cls
set /p ip="Enter IP to lookup: "
echo Looking up %ip%...
curl -s http://ip-api.com/json/%ip%
echo.
pause
goto menu

:pingip
cls
set /p ip="Enter IP to ping: "
ping %ip%
echo.
pause
goto menu

:traceip
cls
set /p ip="Enter IP to traceroute: "
tracert %ip%
echo.
pause
goto menu
