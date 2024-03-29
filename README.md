<img src="./tuladhaJejegOT.svg">

# Tuladha Jejeg OT

Tuladha Jejeg is javanese typeface designed by **R.S. Wihananto**. based on a javanese metal type punched by **T. Roorda**. Originally developed using Graphite (famously supported in **Mozilla** and **Libre Office**), now converted to Opentype with AFDKO FEA for better device and software support.

you can download the original Graphite file here:
- [Tuladha Jejeg Graphite](https://sites.google.com/site/jawaunicode/home) **Original Site**
- [Tuladha Jejeg](https://aksaradinusantara.com/fonta/tuladha-jejeg.font) **Aksara di Nusantara**

This opentype version isn't exactly the same as the original, due to the limitations of AFDKO FEA syntax, some shaping isn't working and collision are handled differently.

The first step of converting Tuladha jejeg to Opentype is to make it work. another features like more complex shape handling and unwanted collissions will be refined in future updates.

## use the font with CDN. [EXAMPLE](https://codepen.io/akufadhl/pen/YzYLEKz)
Add this html to your `<head>`
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/akufadhl/Tuladha-Jejeg-OT/css/tuladhaJejeg.css">
```
or use `@import` in your css
```css
@import url("https://cdn.jsdelivr.net/gh/akufadhl/Tuladha-Jejeg-OT/css/tuladhaJejeg.css");
```
and reference the file in your styling
```css
font-family: "Tuladha Jejeg"
```

## Contents
- **Glyphdata Javanese** : set of .plist file for Javanese Unicode Data for Glyphsapp file
- **fonts**, Binary font file:
  - OTF
  - TTF
- **source**: a Glyph 3 source file. Other source file such as UFO will be available in the future.
- **Javanese Text**: a sample text to preview the font. (still growing).
- **makefile**: makefile file to build the font from source and do a fontbakery test.

## Contributing
Currently, the source file is only available in .glyphs 3 format. More source file will be available in the future.

to build the font files run
```
make build
```
## DISCLAIMER
This opentype conversion of Tuladha Jejeg is not a perfect conversion of its *Graphite* origin. Bugs and Weird things may appear. If so, please file an issue or a bug report and we will do our best to fix and refine the font.

## Special Thanks
- [Rainer Erich Scheichelbauer](https://github.com/mekkablue) | Glyphdata, App Support
- [Ben Mitchell](http://www.fontpad.co.uk/), [Georg Seifert](https://github.com/schriftgestalt) | OTFeatures, No Collisions Idea
- [John Hudson](https://github.com/TiroTypeworks) | Specimen images
- [Just Van Rossum](https://github.com/justvanrossum) | [Font Goggles](https://fontgoggles.org/)
- [Muthu Nedumaran](https://github.com/murasu) | [Hibizcus](https://hibizcus.com/)
- [Simon Cozens](https://github.com/simoncozens) | Advice on Opentype
- [Aditya Bayu Perdana](https://github.com/adtbayuperdana) | for his invaluable advice and guidance

## LICENSE
**Tuladha Jejeg** is licensed under the [SIL Open Font License, Version 1.1](https://scripts.sil.org/cms/scripts/page.php?item_id=OFL-FAQ_web)

## Change Log
v0.5 : 31 August 2022
  - Initial Release
