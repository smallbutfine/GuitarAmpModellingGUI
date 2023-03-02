::  Copyright (C):  2023 Martin Haverland
::    
::
::  LICENSE: MIT
@echo off
echo This script is building the model.
echo THIS CAN TAKE A LOOONG TIME!
echo.
cd Automated-GuitarAmpModelling
call .\mypyenv\Scripts\activate.bat
!python prep_wav2.py proteus_knob -p "./Configs/Parameterization-Config-Proteus.json" --normalize true
!python dist_model_recnet.py -l "RNN3-proteus_knob" -is 2 -eps 300
call .\mypyenv\Scripts\deactivate.bat
