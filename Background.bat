:: Download Wallpaper

cd %homepath%\AppData\Local\Microsoft\Windows\Themes\RoamedThemeFiles\DesktopBackground

powershell -Command "Invoke-WebRequest https://upload.wikimedia.org/wikipedia/de/thumb/4/4e/Sea_Shepherd_Logo.svg/2000px-Sea_Shepherd_Logo.svg.png -UseBasicParsing -OutFile wallpaper.png"



:: Set Wallpaper

reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%cd%\wallpaper.png" /f

reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 1 /f
 
SLEEP 3
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters

