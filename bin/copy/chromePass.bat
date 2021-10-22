@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%chromeLocalPass%"    "%chromeDataDir%\Local"    "%chromeLocalPassFiles%"     *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

%robocopyDisplay%  robocopy  "%chromeRoamingPass%"  "%chromeDataDir%\Roaming"  "%chromeRoamingPassFiles%"   *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %chromeStatus%

%robocopyPause%
exit