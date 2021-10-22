@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%edgeLocal%"    "%edgeDataDir%\Local"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%edgeRoaming%"  "%edgeDataDir%\Roaming"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %edgeStatus%

%robocopyPause%
exit