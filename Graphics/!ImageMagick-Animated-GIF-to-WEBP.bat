@echo off

REM https://chatgpt.com/c/6a51833d-4420-83eb-aba9-6d1fc243b726

setlocal

set MAGICK_THREAD_LIMIT=4

for %%i in (*.gif) do (
    echo Converting "%%i"...

    magick "%%i" -coalesce ^
        -quality 85 ^
        -define webp:method=5 ^
        -define webp:use-sharp-yuv=true ^
        -define webp:auto-filter=true ^
        -define webp:alpha-quality=100 ^
        -define webp:thread-level=1 ^
        "%%~ni.webp"
)

echo.
echo Conversion finished.
pause
