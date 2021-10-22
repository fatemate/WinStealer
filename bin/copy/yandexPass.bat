@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%yandexLocalPass%"    "%yandexDataDir%\Local"   "%yandexLocalPassFiles%"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%yandexRoamingPass%"  "%yandexDataDir%\Roaming" "%yandexRoamingPassFiles%"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %yandexStatus%

%robocopyPause%
exit