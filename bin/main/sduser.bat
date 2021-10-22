@echo off
%echoOn%

cd "%copyDir%"

%taskMessage% start %robocopyCmd% %taskPriority% yandexUser.bat
%taskMessage% start %robocopyCmd% %taskPriority% chromeUser.bat
%taskMessage% start %robocopyCmd% %taskPriority% operaUser.bat
%taskMessage% start %robocopyCmd% %taskPriority% firefoxUser.bat
%taskMessage% start %robocopyCmd% %taskPriority% edgeUser.bat

%pause%
exit