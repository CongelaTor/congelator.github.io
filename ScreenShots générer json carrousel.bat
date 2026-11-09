rem=============================================
set "SCREENSHOTS=img\alto_gaspi\screenshots"
rem=============================================
set "OUTPUT=%SCREENSHOTS%\screenshots.json"
> "%OUTPUT%" echo [
set "FIRST=1"
setlocal enabledelayedexpansion
for %%F in ("%SCREENSHOTS%\*.png" "%SCREENSHOTS%\*.jpg" "%SCREENSHOTS%\*.jpeg" "%SCREENSHOTS%\*.webp") do (
    if exist "%%F" (
        if "!FIRST!"=="1" (
            >> "%OUTPUT%" echo   "%%~nxF"
            set "FIRST=0"
        ) else (
            >> "%OUTPUT%" echo   ,"%%~nxF"
        )
    )
)
endlocal
>> "%OUTPUT%" echo ]
echo.
echo Fichier genere : %OUTPUT%

rem=============================================
set "SCREENSHOTS=img\flowfy\screenshots"
rem=============================================
set "OUTPUT=%SCREENSHOTS%\screenshots.json"
> "%OUTPUT%" echo [
set "FIRST=1"
setlocal enabledelayedexpansion
for %%F in ("%SCREENSHOTS%\*.png" "%SCREENSHOTS%\*.jpg" "%SCREENSHOTS%\*.jpeg" "%SCREENSHOTS%\*.webp") do (
    if exist "%%F" (
        if "!FIRST!"=="1" (
            >> "%OUTPUT%" echo   "%%~nxF"
            set "FIRST=0"
        ) else (
            >> "%OUTPUT%" echo   ,"%%~nxF"
        )
    )
)
endlocal
>> "%OUTPUT%" echo ]
echo.
echo Fichier genere : %OUTPUT%
pause