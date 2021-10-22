@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%firefoxLocal%"    "%firefoxDataDir%\Local"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%firefoxRoaming%"  "%firefoxDataDir%\Roaming"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %firefoxStatus%

%robocopyPause%
exit