@echo off

:loop_start

cls

echo ---------------------------------
echo         Joke API Caller
echo ---------------------------------
echo 1. Get a Joke
echo 2. Exit
echo ---------------------------------

set /p choice="Enter your choice (1/2): "

if "%choice%"=="1" (
    powershell.exe -NoProfile -ExecutionPolicy Bypass -File "get_joke.ps1"
    goto loop_start
) else if "%choice%"=="2" (
    echo Exiting...
    pause
    exit
) else (
    echo Invalid choice, try again!
    pause
    goto loop_start
)