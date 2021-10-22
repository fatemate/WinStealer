@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%edgeLocalPass%"    "%edgeDataDir%\Local"    "%edgeLocalPassFiles%"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%edgeRoamingPass%"  "%edgeDataDir%\Roaming"  "%edgeRoamingPassFiles%"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready >  %edgeStatus%

%robocopyPause%
exit