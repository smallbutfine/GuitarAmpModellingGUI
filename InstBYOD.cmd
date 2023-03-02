::  Copyright (C):  2023 Martin Haverland
::    
::
::  LICENSE: MIT
@echo off
echo This script is downloading and installing the Chowdhury-DSP BYOD VST plugin.
echo This plugin can load Proteus amp models.
echo.
echo.
echo PLEASE BE PATIENT.
echo.
echo Downloading Chowdhury-DSP BYOD VST installer. Please wait...
curl -L "https://github.com/Chowdhury-DSP/BYOD/releases/download/v1.1.3/BYOD-Win-64bit-1.1.3.exe" -o BYOD-Win.exe
echo Installing Chowdhury-DSP BYOD VST...
BYOD-Win.exe
del BYOD-Win.exe