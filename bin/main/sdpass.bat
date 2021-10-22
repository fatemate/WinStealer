@echo off
%echoOn%

cd "%copyDir%"

%taskMessage% start %robocopyCmd% %taskPriority% yandexPass.bat
%taskMessage% start %robocopyCmd% %taskPriority% chromePass.bat
%taskMessage% start %robocopyCmd% %taskPriority% operaPass.bat
%taskMessage% start %robocopyCmd% %taskPriority% firefoxPass.bat
%taskMessage% start %robocopyCmd% %taskPriority% edgePass.bat

%pause%
exit