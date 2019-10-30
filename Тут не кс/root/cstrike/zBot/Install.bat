@echo off
echo *************************************************
echo *  Install zBot for Counter-Strike 1.6          *
echo *  Copyright Counter-Strike.Com.Ua, 2008-2015.  *
echo *  All rights reserved.                         *
echo *************************************************
echo.

@setlocal enableextensions
@cd /d "%~dp0"

cd..

IF NOT EXIST liblist.original (
	attrib -R -A -S -H liblist.gam
	rename liblist.gam liblist.original
	echo [OK] Sdelana rezervnaya kopiya liblist.gam
	copy zBot\data\liblist_csbot.gam liblist.gam
	echo [OK] Boti uspeshno ustanovleny.
) ELSE (
	attrib -R -A -S -H liblist.gam
	copy zBot\data\liblist_csbot.gam liblist.gam
	echo [OK] Boti uzhe ustanovleny, pereustanovleno.
)
pause.