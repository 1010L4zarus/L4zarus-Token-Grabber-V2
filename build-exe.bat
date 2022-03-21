@echo off
color 0a
echo.
set /p a="ingesa el nombre que quieres para el exe: "
if [%a%]==[] ( 
    CALL:error
    pause
    EXIT /B
) 
if [%a%] NEQ [] (
    CALL:main
    EXIT /B 1 
)
ECHO is on
:main
echo.
echo Nombre: %a%
pyinstaller --clean --onefile --noconsole -i NONE -n %a% main.py
rmdir /s /q __pycache__
rmdir /s /q build
del /f / s /q %a%.spec
echo.
echo Exe generado %a%.exe
EXIT /B 1 
ECHO is on
:error
echo.
echo Estupido retrasado, ingresa un nombre
EXIT /B 1
