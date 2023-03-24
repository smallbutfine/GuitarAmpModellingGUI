# GuitarAmpModellingGUI
GUI for easier installation and training of neural network models for guitar amplifiers and pedals, based on the GuitarML Proteus models. These are usable for Proteus, Chowdhury-DSP BYOD and even NeuralPi, on all platforms incl. Linux and RaspberryPi. 

What is this?
GuitarML's work on Proteus, NeuralPi and Proteusboard (hardware) is amazing. https://github.com/GuitarML

Yet, it is not easy to wrap your head around if you are not familiar with programming, AI, machine learning, neural networks.
So, Keith Bloemer a.k.a. GuitarML set up a Google Colab script to give people the Opportunity to train their own models online.
Still, I thought that things could be easier, and I wanted a faster way to work with the python scripts.
So I automated some things on my Windows 10 machine.
I assume, that most musicians use this OS.
This repository contains a bunch of Windows batch scripts and a freepascal based GUI solution.
They allow me to quickly install, re-install and test everything and even start a local offline model training.
I tried to make the install of all prerequisites as automated as possible, yet as little intrusive of global OS settings as possible.
Despite of a quiet install of python3 with standard settings, everything is hold inside of one folder or are just temporary.
The python prerequisites are hold in a virtual environment to not collide to any other python installation.
The offline training takes it's time, though, but is managable with a fast PC.
I will provide a convenient binary installer, so people will not have to deal with code organization and compilation at all.

-------------------------------------
How to build/compile from source code
-------------------------------------
This is not necessary with the portable install release available, but if you want to change the GUI, this is how it works.

Building the GUI is quite easy.
Download the repository to a local folder on your Windows 10 PC.
Download and install CodeTyphon 8. You find it here: https://www.pilotlogic.com/sitejoom/index.php/downloads/category/14-codetyphon.html
As soon as you have the development environment IDE running, it is fairly simple.
(Looks complicated, but is pretty straightforward for everyone who has ever used an IDE for programming, no matter what language.)
Open the Lazarus (Pascal) project file from the repository folder and compile it.
This should work out of the box.
You get the binary executable in form of an .exe file right in this repository folder.

----------
How to use
----------
The binary executable .exe can simply be double clicked in the explorer, wherever it is installed, or started right from the Lazarus IDE, if you compiled it yourself.

The GUI is made for simplicity and works without submenu hassle.
It is mostly self-explanatory.
The help menu opens Youtube videos of GuitarML with really good information, how to capture an amp, pedal or VST plugin.

When it comes to the building/training of the AI model, that can be used in the VST plugins,
the GUI offers a very easy nearly "mouse only" way to initiate necessary installs and OFFLINE/local training.
The scripts are highly automated and there is as little manual work as it gets.

You need the keyboard only for entering the desired name of the model and to confirm closing of scripts.
(I left that in, so you can see what actually happened and if errors occured. Which is most likely not happening.)

Yes, this works just by simply clicking a few buttons.
The hardest part is capturing the audio files of your gear or plugins.
Even the manual file renaming can be left out. You can import the files from wherever they are, easily.

Once you have these, your job is ... waiting for the scripts to do the hard work on their own.

When the model is trained and ready to use, you can install it with the click of a button to whereever you need it.
(Well, you have to give it a name ... it is a simple copying of the .json model file.)


These are great times for musicians.
Machine Learning and Neuronal Network Models revolutionize the way music is made.
And it is great to see, that people open source their software.
With excellent free plugins and DIY hardware devices, that are by far more affordable than most similar commercial solutions.
They can give you sound quality that is indistinguishable from the expensive hardware they are modelling, in studio and on stage.

Keep making music.
Rock on.

Best regards, Martin
