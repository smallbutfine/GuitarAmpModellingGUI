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
pause
python prep_wav.py amp_clean -s Data/Proteus_Capture.wav ..\out.wav --normalize true
pause
python dist_model_recnet.py -l "RNN3-amp_clean" -eps 300
pause
call .\mypyenv\Scripts\deactivate.bat
copy /Y "Results\amp_clean-RNN3-amp_clean\model_best.json" ..\newProteusModel.json
pause
