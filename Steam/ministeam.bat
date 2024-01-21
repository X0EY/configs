@echo off
cd /d "C:\Program Files (x86)\Steam"
rename .\bin\cef\cef.win7x64\steamwebhelper.exe2 steamwebhelper.exe
rename .\steamerrorreporter.exe2 steamerrorreporter.exe
rename .\steamerrorreporter64.exe2 steamerrorreporter64.exe
runas /trustlevel:0x20000 "steam.exe -nocrashmonitor -no-browser -nochatui -nofriendsui +open steam://open/minigameslist"

:search
tasklist|find "steamwebhelper.exe"
IF %ERRORLEVEL% == 0 GOTO :found
TIMEOUT /T 15
GOTO :search

:found
rename .\bin\cef\cef.win7x64\steamwebhelper.exe steamwebhelper.exe2
rename .\steamerrorreporter.exe steamerrorreporter.exe2
rename .\steamerrorreporter64.exe steamerrorreporter64.exe2
taskkill /f /im steamwebhelper.exe
del .\bin\cef\cef.win7x64\steamwebhelper.exe
del .\steamerrorreporter.exe
del .\steamerrorreporter64.exe