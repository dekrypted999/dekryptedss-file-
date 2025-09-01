@echo off
set /p ip="Enter IP address: "

REM Call the ip-api.com API and save the result
curl -s http://ip-api.com/json/%ip% > result.json

REM Show the result
type result.json

pause
