set ADDON_NAME=ifatigue

set PROJECT_DRIVE=X
set OUTPUT=pbo
set SOURCE_DRIVE=X
set INPUT=x
set SOURCES_DIR=sources
set KEY=%PROJECT_DRIVE%:\tools\key\iEnemY.biprivatekey
set PUBLIC_KEY=%PROJECT_DRIVE%:\tools\key\iEnemY.bikey

rem Path like X:\tools\depbo\ - and there are must lay depbo.exe
set PBO_TOOL=%PROJECT_DRIVE%:\tools\AddonBuilder
set TOOL_EXECUTABLE=AddonBuilder.exe

rem Clear cache
rd /S /Q C:\Users\%USERNAME%\AppData\Local\Temp\core

rem Addon will placed in X:\pbo\ifatigue by default
mkdir "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%"
mkdir "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons"
mkdir "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\keys"

rem Cleaning old data
del /F /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\ifatigue_core"
del /F /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\ifatigue_settings"

rem Deleting directories
rd /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\ifatigue_core"
rd /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\ifatigue_settings"

rem Clearing any other old files
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\ifatigue_core.pbo"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\ifatigue_settings.pbo"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\mod.cpp"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\aipl.paa"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\keys\*"

rem Copying misc files
copy "%SOURCE_DRIVE%:\%SOURCES_DIR%\%ADDON_NAME%\mod.cpp" "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\mod.cpp"
copy "%SOURCE_DRIVE%:\%SOURCES_DIR%\%ADDON_NAME%\aipl.paa" "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\aipl.paa"
copy "%PUBLIC_KEY%" "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\keys\"

cls

cd /d "%PBO_TOOL%"
rem %TOOL_EXECUTABLE% "%SOURCE_DRIVE%:\%SOURCES_DIR%\%ADDON_NAME%\fatigue\addons\core" "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons\%ADDON_NAME%_core.pbo" -prefix "x\fatigue\addons\core"
%TOOL_EXECUTABLE% "%SOURCE_DRIVE%:\%SOURCES_DIR%\%ADDON_NAME%\fatigue\addons\core" "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons" -prefix="x\fatigue\addons\core" -packonly -sign="%KEY%"
%TOOL_EXECUTABLE% "%SOURCE_DRIVE%:\%SOURCES_DIR%\%ADDON_NAME%\cba\addons\settings_userconfig" "%PROJECT_DRIVE%:\%OUTPUT%\%ADDON_NAME%\addons" -prefix="cba_settings_userconfig" -packonly -sign="%KEY%"
cd /d "%PROJECT_DRIVE%:\%INPUT%"