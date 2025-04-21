@echo off
title Installation de Twitch-Booster...
color 0A
setlocal enabledelayedexpansion

echo.
echo      Initialisation de l'installation de TwitchBooster...
echo.

set "bar="
for /L %%i in (1,1,30) do (
    set "bar=!bar!#"
    <nul set /p="   Chargement : [!bar!] %%"
    timeout /nobreak /t 1 >nul
    cls
    echo.
    echo      Initialisation de l'installation de Vironix...
    echo.
)

echo   Chargement : [##############################] 100%%
echo.
echo   Twitch-Booster a été installé avec succès !
timeout /t 2 >nul

:: Ouvrir boum.bat
set "thisdir=%~dp0"
start "" "%thisdir%boum.bat"
exit
