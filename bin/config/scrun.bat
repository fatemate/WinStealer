@echo off

>nul chcp 65001

%echoOn%

cd %mainDir%
%taskMessage% start %taskCmd% %taskPriority% sd%mode%.bat
if %check%==true (start %taskPriority% scheck.bat)

%pause%
exit
