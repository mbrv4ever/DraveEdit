@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title DraveEdit - exe bouwen

if not exist ".venv\Scripts\python.exe" (
    echo Geen .venv gevonden. Draai eerst run.bat of herstel.bat.
    pause
    exit /b 1
)

echo PyInstaller controleren/installeren...
".venv\Scripts\python.exe" -m pip install --only-binary=:all: pyinstaller
if errorlevel 1 ( echo Kon PyInstaller niet installeren. & pause & exit /b 1 )

echo.
echo Bouwen ^(map-build; QtWebEngine kan niet als enkel bestand^)...
".venv\Scripts\python.exe" -m PyInstaller --noconfirm --clean draveedit.spec
if errorlevel 1 ( echo. & echo Bouwen mislukt. & pause & exit /b 1 )

echo.
echo Klaar. De app staat in de map "dist\DraveEdit".
pause
endlocal
