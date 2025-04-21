@echo off
setlocal

:: Définir le chemin de l'image (assurez-vous que "Capture.jpg" est dans le même dossier que ce fichier .bat)
set IMAGE_PATH=%~dp0Capture.jpg

:: Vérifier si l'image existe
if not exist "%IMAGE_PATH%" (
    echo L'image Capture.jpg n'a pas été trouvée.
    pause
    exit /b
)

:: Modifier le registre pour définir l'image comme fond d'écran
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%IMAGE_PATH%" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d "0" /f

:: Appliquer les changements
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo Le fond d'écran a été changé avec succès.
pause