@echo off

>nul chcp 65001
echo Удалить все загруженные данные? 
echo [Y(да), N(нет)]
>nul rd "%dataDir%" /S
mkdir "%dataDir%\data"

rd "%tempDir%" /S /Q
mkdir "%tempDir%"
echo on