@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%firefoxLocalPass%"    "%firefoxDataDir%\Local"    "%firefoxLocalPassFiles%"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT::%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%firefoxRoamingPass%"  "%firefoxDataDir%\Roaming"  "%firefoxRoamingPassFiles%"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT::%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %firefoxStatus%

%robocopyPause%
exit