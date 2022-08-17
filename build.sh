#!/bin/sh
set -e

echo "Activating Virtual Env..."
python3 -m venv venv
source venv/bin/activate

echo "Installing requirements..."
python3 -m pip install fontmake
python3 -m pip install fontbakery

SOURCE="source/TuladhaJejeg.glyphs"
otfDIR="fonts/otf"
ttfDIR="fonts/ttf"

mkdir -p fonts
mkdir -p $otfDIR

echo "Installing OTF... \n"
fontmake -o otf -g $SOURCE --output-dir $otfDIR

mkdir -p $ttfDIR

echo "Installing TTF... \n"
fontmake -o ttf -g $SOURCE --output-dir $ttfDIR

echo "Cleaning Up Folders"
rm -r master_ufo
echo "Checking exported OTF using fontbakery"
fontbakery check-googlefonts fonts/otf/*.otf

echo "Checking exported TTF using fontbakery"
fontbakery check-googlefonts fonts/ttf/*.ttf
 
deactivate
echo "Virtual Env deactivated"
rm -r venv
echo "Fonts Generated."

