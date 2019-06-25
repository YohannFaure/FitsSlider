#!/bin/sh
#to install : ./install.sh
chmod +x FitsSlider
mkdir -p ~/FitsSlider
cp FitsSlider ~/FitsSlider/

LINE='export PATH=$PATH":$HOME/FitsSlider"'

grep -qF -- "$LINE" ~/.bashrc || echo "$LINE" >> ~/.bashrc

export PATH=$PATH":$HOME/FitsSlider"

