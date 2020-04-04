@echo off
color 8a
title ThisPcConnect Client Script Installer

:MENU
cls
echo ===========================================
echo -- ThisPcConnect Client Script Installer --
echo ===========================================
echo 1] Install.
echo 2] Check for Existing installation.
echo 0] Exit
echo :)
set /p n=
if %n% == 1 goto welcome
if %n% == 2 goto check
if %n% == 0 goto exit
echo please sellect Correct option ....
pause
goto MENU

:welcome
cls
cd c:\Users\
Net user
echo enter Your User name (At which You Have currently Loged In)
set/p "User=>> "
IF "%User%" == "" goto False
IF EXIST "C:\Users\%User%" goto ok
goto False

:False
echo :O
echo Wrong Choice !!!!!!!!!!!!!!!!
pause
goto welcome


:ok
cls
echo OK
cd C:\
IF EXIST "C:\Cli\" goto deel
goto DDone
:deel 
cls
color 8a
cd C:\
del *. "C:\Cli\*.*"
goto DDone

:DDone
cls
echo Creating Dierctory ...
MKDIR C:\Cli\
cd C:\install\
echo Copying ...
Xcopy "start1.bat" "C:\Users\%User%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
Xcopy "runIt.jar" "C:\Cli\" 
Xcopy "invisible1.vbs" "C:\Cli\"
Xcopy "run1.bat" "C:\Cli\" 
Xcopy "Name.txt" "C:\Cli\"
echo .
pause
goto check

:done 
cls
echo  Inatalled _/
echo Done !!!!!!!!
echo Restart The PC NOW.. 
pause 
goto MENU
exit

:check
cls
cd C:\Cli\
IF EXIST "c:\Cli\runIt.jar" goto done 
echo Not Installed
pause 
goto MENU

:exit