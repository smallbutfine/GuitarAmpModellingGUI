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
python prep_wav.py amp_pedal -s Data\Proteus_Capture.wav ..\out.wav --normalize true
python dist_model_recnet.py -l "RNN3-amp_pedal" -eps 300
call .\mypyenv\Scripts\deactivate.bat
copy "Results\amp_pedal-RNN3-amp_pedal\model_best.json" ..\newProteusModel.json