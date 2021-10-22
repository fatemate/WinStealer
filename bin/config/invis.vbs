Set WshShell = CreateObject("WScript.Shell")
cd ..
cd ..
WshShell.Run "cmd.exe /c %confDir%\srun.bat", 0, false