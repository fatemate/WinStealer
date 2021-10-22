@echo off

>nul chcp 65001
echo Вы уверены, что хотите сбросить настройки к дефолтным?
echo [Y(да), N(нет)]
>nul xcopy "%confDir%\sconfdef.bat" "%confDir%\sconfig.bat" /H /-Y
>nul xcopy "%confDir%\sinitdef.bat" "%confDir%\sinit.bat" /H /Y
