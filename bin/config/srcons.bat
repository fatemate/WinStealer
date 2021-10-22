@echo off
%echoOn%

reg import "%baseDir%\bin\temp\old_console.reg"
del /q /f "%baseDir%\bin\temp\old_console.reg"

%pause%
exit