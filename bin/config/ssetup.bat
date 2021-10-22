@echo off

>nul chcp 65001
start "" "%windir%\system32\notepad.exe" "%confDir%\sconfig.bat"
echo Отредактируте файл с настройками и сохраните его. 
echo Для приминения изминений в текущем сеансе консоли воспользуйтесь командой sconfig.