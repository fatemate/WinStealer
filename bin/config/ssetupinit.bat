@echo off

>nul chcp 65001
start "" "%windir%\system32\notepad.exe" "%confDir%\sinit.bat"
echo Отредактируте файл с базовыми переменными. 
echo Для приминения изминений в текущем сеансе консоли воспользуйтесь командой sinit.