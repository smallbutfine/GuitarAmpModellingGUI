::  Copyright (C):  2023 Martin Haverland
::    
::
::  LICENSE: MIT
@echo off
echo This script is downloading and installing the GuitarML Proteus VST.
echo.
echo.
echo PLEASE BE PATIENT.
echo.
echo Downloading GuitarML Proteus VST installer. Please wait...
curl -L "https://github.com/GuitarML/Proteus/releases/download/v1.2/Proteus-Win-1.2.0.exe" -o Proteus-Win.exe
echo Installing GuitarML Proteus VST...
Proteus-Win.exe
del Proteus-Win.exe