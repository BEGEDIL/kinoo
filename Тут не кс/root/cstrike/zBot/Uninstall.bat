@echo off
echo *************************************************
echo *  Uninstall zBot for Counter-Strike 1.6        *
echo *  Copyright Counter-Strike.Com.Ua, 2008-2015.  *
echo *  All rights reserved.                         *
echo *************************************************
echo.

@setlocal enableextensions
@cd /d "%~dp0"

cd..

IF EXIST liblist.original (
	attrib -R -A -S -H liblist.original
	attrib -R -A -S -H liblist.gam
	copy liblist.original liblist.gam
	del liblist.original
	echo [OK] Boti udaleni.
) ELSE (
	echo [FAIL] Ne nayden fayl dlya vosstanovleniya "liblist.original". Udalenie nevozmozhno.
)
pause.