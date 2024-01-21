@echo off
cd /d "C:\Program Files (x86)\Steam"
rename .\bin\cef\cef.win7x64\steamwebhelper.exe2 steamwebhelper.exe
rename .\steamerrorreporter.exe2 steamerrorreporter.exe
rename .\steamerrorreporter64.exe2 steamerrorreporter64.exe
runas /trustlevel:0x20000 "steam.exe +open steam://open/largegameslist"