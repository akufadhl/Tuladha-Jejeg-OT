#!/bin/sh
set -e

echo "Activating Virtual Env..."
python3 -m venv venv
source venv/bin/activate

echo "Installing requirements..."
python3 -m pip install fontmake
python3 -m pip install fontbakery


mkdir -p ../fonts
mkdir -p ../fonts/otf

echo "Installing OTF... \n"
fontmake -o otf -g TuladhaJejeg.glyphs --output-dir ../fonts/otf

mkdir -p ../fonts/ttf

echo "Installing TTF... \n"
fontmake -o ttf -g TuladhaJejeg.glyphs --output-dir ../fonts/ttf

echo "Cleaning Up Folders"
rm -r master_ufo

echo "Checking exported OTF using fontbakery"
# fontbakery check-googlefonts ../fonts/otf/TuladhaJejegOT-Regular.otf

echo "Checking exported TTF using fontbakery"
# fontbakery check-googlefonts ../fonts/ttf/TuladhaJejegOT-Regular.ttf
#fontbakery 
deactivate
echo "Virtual Env deactivated"
echo "Fonts Generated."

