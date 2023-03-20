::  Copyright (C):  2023 Martin Haverland
::    
::
::  LICENSE: MIT
@echo off
echo This script is downloading and installing the complete Proteus modelling environment and all prerequisites.
echo.
echo.
echo PLEASE BE PATIENT.
echo SOME PARTS OF THIS INSTALLATION PROCESS CAN TAKE QUITE SOME TIME!
echo DON'T CLOSE THIS WINDOW UNTIL YOU ARE ASKED TO DO IT.
echo.
echo.
::echo Downloading SoX for Windows. Please wait...
::curl -L "https://sourceforge.net/projects/sox/files/sox/14.4.2/sox-14.4.2-win32.zip" -o sox.zip
::echo Extracting SoX for Windows...
::tar -xf sox.zip
::echo Done.
::echo Deleting SoX zip file.
::del sox.zip
::echo Done.
::echo.
::echo.
echo Downloading Capture Utility from GuitarML...
curl -L "https://github.com/GuitarML/Releases/releases/download/v1.0.0/Proteus_Capture_Utility.zip" -o Proteus_Capture_Utility.zip
echo Done.
echo.
echo. 
echo Downloading Git for Windows. Please wait...
curl -L "https://github.com/git-for-windows/git/releases/download/v2.39.2.windows.1/PortableGit-2.39.2-64-bit.7z.exe" -o PortableGit.exe
echo Installing portable Git for Windows temporarily. Please wait...
PortableGit.exe -y -gm2
del PortableGit.exe
set gitdir=%~dp0\PortableGit
set path=%gitdir%\cmd;%path%
echo Git installation done.
echo.
echo Removing existing previous installation of Automated-GuitarAmpmodelling...
rmdir /s /q Automated-GuitarAmpModelling
echo Done.
echo.
echo Installing Github clone of Proteus branch, please wait...
git.exe clone --branch proteus-capture --single-branch https://github.com/GuitarML/Automated-GuitarAmpModelling.git
echo Updating submodules...
cd Automated-GuitarAmpModelling
git submodule update --init --recursive
echo Github clone process completed.
echo Removing PortableGit...
rmdir /s /q ..\PortableGit
echo Done.
echo.
echo.
echo Downloading python. Please wait...
rem --Download python installer
curl "https://www.python.org/ftp/python/3.9.4/python-3.9.4-amd64.exe" -o python-installer.exe
echo Installing Python 3.9.4. Please wait...
rem --Install python
python-installer.exe /quiet InstallAllUsers=1 PrependPath=1
rem --Refresh Environmental Variables
del python-installer.exe
call RefreshEnv.cmd
echo Creating python virtual environment in directory mypyenv...
python -m venv .\mypyenv
echo Activating python virtual environment...
call .\mypyenv\Scripts\activate.bat
echo Updating PIP...
python.exe -m pip install --upgrade pip
echo Python install done.
echo.
echo.
echo Installing Proteus modelling requirements...
pip install -r ./requirements.txt
::curl https://developer.download.nvidia.com/compute/cuda/11.8.0/network_installers/cuda_11.8.0_windows_network.exe -o cuda-installer.exe
::cuda-installer.exe
echo.
echo.
echo Installing cpu...
::pip3 install torch==1.9.1+cu111 torchvision==0.10.1+cu111 torchaudio==0.9.1 -f https://download.pytorch.org/whl/torch_stable.html
pip3 install scipy==1.10.1
pip3 install numpy --pre torch torchvision torchaudio --force-reinstall --index-url https://download.pytorch.org/whl/nightly/cu118
echo Done.
echo.
echo.
echo De-activating python virtual environment...
call .\mypyenv\Scripts\deactivate.bat
echo Local Proteus modelling environment installed.
echo.
echo.
echo You can scroll in this window to review the installation process.
echo This window can now be closed.
echo Thank you.
pause
