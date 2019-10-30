@echo off

@setlocal enableextensions
@cd /d "%~dp0"

echo Loading settings..
::Загрузка настроек из файла из save.reg в Windows
regedit /S "%cd%\registry\save.reg"
echo Launching Counter-Strike 1.6

cd root
call hl.exe -game cstrike -appid 10 -noforcemparms -noforcemaccel
echo Counter-Strike has quit, now saving settings

cd ..
::Сохранение настроек из Windows в файл save.reg
regedit /S /E "%cd%\registry\save.reg" "HKEY_CURRENT_USER\Software\Valve\Half-Life\Settings"

echo Removing Traces..
::Удаление следов в реестре
regedit /S "%cd%\registry\ValveCleaner.reg"

echo Done! Batch by Counter-Strike.Com.Ua
pause