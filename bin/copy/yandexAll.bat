@echo off
%echoOn%

%robocopyDisplay%  robocopy  "%yandexLocal%"    "%yandexDataDir%\Local"    *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%
%robocopyDisplay%  robocopy  "%yandexRoaming%"  "%yandexDataDir%\Roaming"  *.* /E /DCOPY:DAT /COPY:DAT /R:5 /W:1 /MT:%mtLevel% %robocopyDisplayLevel%

cd  "%tempDir%"
echo ready > %yandexStatus%

%robocopyPause%
exit