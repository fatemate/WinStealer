@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%chromeLocalUser%"    "%chromeDataDir%\Local"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%chromeRoamingUser%"  "%chromeDataDir%\Roaming"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %chromeStatus%

%robocopyPause%
exit