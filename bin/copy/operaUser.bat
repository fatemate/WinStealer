@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%operaLocalUser%"    "%operaDataDir%\Local"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%operaRoamingUser%"  "%operaDataDir%\Roaming"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %operaStatus%

%robocopyPause%
exit