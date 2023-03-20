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
python prep_wav.py pedal -s Data\Proteus_Capture.wav ..\out.wav --normalize true
python dist_model_recnet.py -l "RNN3-pedal" -eps 300
call .\mypyenv\Scripts\deactivate.bat
copy /Y "Results\pedal-RNN3-pedal\model_best.json" ..\newProteusModel.json
pause
