set PROJECT_DRIVE=W
set OUTPUT=pbo
set SOURCE_DRIVE=W
set INPUT=x
set PBODLL=%PROJECT_DRIVE%:\Users\%USERNAME%\Appdata\Local\SIX Networks\Shared\tools\pbodll
cd /d "%PBODLL%"
mkdir "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue"
mkdir "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons"

del /F /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_core"
del /F /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_settings"

rd /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_core"
rd /S /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_settings"

del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_core.pbo"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_settings.pbo"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\mod.cpp"
del /F /Q "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\aipl.paa"

copy "%SOURCE_DRIVE%:\%INPUT%\mod.cpp" "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\mod.cpp"
copy "%SOURCE_DRIVE%:\%INPUT%\aipl.paa" "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\aipl.paa"
cls
MakePbo -A -P "x\fatigue\addons\core" "%SOURCE_DRIVE%:\%INPUT%\fatigue\addons\core" "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_core.pbo"
MakePbo -A -P "cba_settings_userconfig" "%SOURCE_DRIVE%:\%INPUT%\cba\addons\settings_userconfig" "%PROJECT_DRIVE%:\%OUTPUT%\ifatigue\addons\ifatigue_settings.pbo"
cd /d "%PROJECT_DRIVE%:\%INPUT%"