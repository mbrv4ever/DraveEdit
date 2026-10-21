@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title DraveEdit - herstel

echo Dit verwijdert de .venv en installeert alles opnieuw.
echo.
if exist ".venv" (
    echo .venv wordt verwijderd...
    rmdir /s /q ".venv"
)

set "PYEXE="
for %%V in (3.13 3.12 3.11 3.10) do (
    if not defined PYEXE (
        py -%%V -c "import sys" >nul 2>&1 && set "PYEXE=py -%%V"
    )
)
if not defined PYEXE (
    python -c "import sys" >nul 2>&1 && set "PYEXE=python"
)
if not defined PYEXE (
    echo Geen geschikte Python gevonden. Installeer Python 3.10 t/m 3.13.
    pause
    exit /b 1
)

echo Gebruikte Python: %PYEXE%
%PYEXE% -m venv ".venv"
".venv\Scripts\python.exe" -m pip install --upgrade pip
".venv\Scripts\python.exe" -m pip install --only-binary=:all: -r requirements.txt
if errorlevel 1 (
    echo.
    echo Herstel mislukt. Controleer of Python 3.10-3.13 geinstalleerd is.
    pause
    exit /b 1
)
echo.
echo Klaar. Start DraveEdit nu met run.bat.
pause
endlocal
