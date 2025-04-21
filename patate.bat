@echo off
setlocal

:: D�finir le chemin de l'image (assurez-vous que "Capture.jpg" est dans le m�me dossier que ce fichier .bat)
set IMAGE_PATH=%~dp0Capture.jpg

:: V�rifier si l'image existe
if not exist "%IMAGE_PATH%" (
    echo L'image Capture.jpg n'a pas �t� trouv�e.
    pause
    exit /b
)

:: Modifier le registre pour d�finir l'image comme fond d'�cran
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%IMAGE_PATH%" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d "0" /f

:: Appliquer les changements
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo Le fond d'�cran a �t� chang� avec succ�s.
pause