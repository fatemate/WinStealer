@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%yandexLocalUser%"    "%yandexDataDir%\Local"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%yandexRoamingUser%"  "%yandexDataDir%\Roaming"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %yandexStatus%

%robocopyPause%
exit