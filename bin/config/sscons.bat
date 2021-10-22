@echo off
%echoOn%

reg export "HKCU\Console" "%baseDir%\bin\temp\old_console.reg" /y
reg import "%baseDir%\bin\config\console.reg"

%pause%
exit