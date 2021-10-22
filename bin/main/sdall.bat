@echo off
%echoOn%

cd "%copyDir%"

%taskMessage% start %robocopyCmd% %taskPriority% yandexAll.bat
%taskMessage% start %robocopyCmd% %taskPriority% chromeAll.bat
%taskMessage% start %robocopyCmd% %taskPriority% operaAll.bat
%taskMessage% start %robocopyCmd% %taskPriority% firefoxAll.bat
%taskMessage% start %robocopyCmd% %taskPriority% edgeAll.bat

%pause%
exit