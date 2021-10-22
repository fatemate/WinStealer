@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%operaLocalPass%"    "%operaDataDir%\Local"    "%operaLocalPassFiles%"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%operaRoamingPass%"  "%operaDataDir%\Roaming"  "%operaRoamingPassFiles%"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %operaStatus%

%robocopyPause%
exit