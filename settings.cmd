@echo off

chcp 65001
call bin\config\sconfig.bat
call bin\config\sinit.bat
set "path=%baseDir%;%confDir%;%path%"
set "debugCmdMessage1=Добро пожаловать в консоль отладки и тестирования!"
set "debugCmdMessage2=Все переменные среды были инициализированы в соответствии с файлами конфигурации."
set "debugCmdMessage3=Для отображения доступных команд используйте shelp."
start cmd /K "title Stealer cmd && echo %debugCmdMessage1% && echo %debugCmdMessage2% && echo %debugCmdMessage3% && echo on"
exit
