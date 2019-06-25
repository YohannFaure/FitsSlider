# FitsSlider
Just a quick tool to open Fits image and change their brightness.

## Requirements

Python3, astropy and matplotlib.

## Installation

To install it, just add running permision and run `./install.sh`. It will install the utility in `~/FitsSlider/` and add a line in `~/.bashrc` for the program to be called from anywhere.

```
cd /path/to/FitSlider-master
chmod +x install.sh
./install.sh
```

## Usage

To open a Fits image : `FitsSlider /path/to/image`.

The sliders are the minimum and maximum of the image. All points bellow the minimum will be black, while all point above the maximum will be white.

## Options

`--cmap` : Colormap to use, must be chosen amongst Matplotlib cmaps. Default : `'gist_heat'`.

`--noheader` : If you want to use pixels instead of Arcseconds, and therefore not use the header, specify it using this option.

`--background` : Set background color for `None` pixels. Default : `'k'`.

`--function` : Function to apply before plotting. Examples : `'np.log'`, `'lambda x : x**2.'`. Default : `None`.

`--latex` : Enables LaTeX for the legends. Might be slower.

## Example :
Run example :

```
FitsSlider J1615_sphere.fits --function 'lambda a : a**.5'
```

![example image]
(example.png)
