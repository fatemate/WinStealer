Set WshShell = CreateObject("WScript.Shell")
cd ..
cd ..
WshShell.Run "cmd.exe /c %confDir%\scrun.bat", 0, false