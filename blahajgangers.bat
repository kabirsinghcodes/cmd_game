@echo off
title Blahajgangers
color 0D
if "%1" neq "" ( goto %1)
:Menu
cls
echo 1. Start
echo 2. Instructions
echo 3. Exit
set /p answer=Type the number of your option and press enter : 
if %answer%==1 goto Start_1
if %answer%==2 goto Instructions
if %answer%==3 goto Exit
:Exit
cls
echo We Hope You Enjoyed The Game . Thanks for playing !
pause
exit /b
:Instructions
cls
echo Instructions
echo.
echo 'Welcome To BlahajGangers Game'
pause
goto Menu
:Start_1
cls
echo Hurry up ! Some bad guys Surrounded You.
echo They are totally 5 gang-stars
echo You are having a high chance of winning.
set /p answer=Would you like to fight or run ?
if %answer%==fight goto Fight_1
if %answer%==run goto Run_1
pause
:Run_1
cls
echo You ran away safely !
pause
goto Start_1
:Fight_1
echo Get ready for a hardcore fight.
echo The battle is waging.
set /p answer= Type number 1 and press enter to continue:
if %answer%==1 goto Fight_1_Loop
:Fight_1_Loop
set /a num=%random%
if %num% gtr 4 goto Fight_1_Loop
if %num% lss 1 goto Fight_1_Loop
if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo Sorry, you lost the fight :(
pause
goto Menu
:Win_Fight_1
cls
echo Congrats, you won the fight!!!
set /p answer='Would you like to save?' Type yes to save or type no .
if %answer%=='yes' goto 'Save'
if %answer%=='no' goto 'Start_2'
:Save
goto Start_2