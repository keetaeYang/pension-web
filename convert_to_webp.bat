@echo off
echo Starting WebP conversion...

set CWEBP_PATH=C:\Users\keetae\Desktop\webp-tools\cwebp.exe
set IMAGES_PATH=C:\Users\keetae\Desktop\Claude\pension\images

echo Converting house main images...
for %%f in ("%IMAGES_PATH%\house\*.jpg") do (
    echo Converting "%%f"
    "%CWEBP_PATH%" -q 80 "%%f" -o "%%~dpnf.webp"
)

echo Converting house room images...
for /r "%IMAGES_PATH%\house" %%f in (*.jpg) do (
    echo Converting "%%f"
    "%CWEBP_PATH%" -q 80 "%%f" -o "%%~dpnf.webp"
)

echo Converting pension main images...
for %%f in ("%IMAGES_PATH%\pension\*.jpg") do (
    echo Converting "%%f"
    "%CWEBP_PATH%" -q 80 "%%f" -o "%%~dpnf.webp"
)

echo Converting pension room and facility images...
for /r "%IMAGES_PATH%\pension" %%f in (*.jpg *.png) do (
    echo Converting "%%f"
    "%CWEBP_PATH%" -q 80 "%%f" -o "%%~dpnf.webp"
)

echo Converting root images...
for %%f in ("%IMAGES_PATH%\*.jpg" "%IMAGES_PATH%\*.png") do (
    echo Converting "%%f"
    "%CWEBP_PATH%" -q 80 "%%f" -o "%%~dpnf.webp"
)

echo WebP conversion completed!
pause