@echo off

>nul chcp 65001

>nul call bin\config\sconfig.bat
>nul call bin\config\sinit.bat

%echoOn%

cd %mainDir%
%taskMessage% start %taskCmd% %taskPriority% sd%mode%.bat
if %check%==true (start %taskPriority% scheck.bat)

%pause%
exit
