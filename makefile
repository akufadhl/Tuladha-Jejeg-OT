filename=TuladhaJejeg
SOURCE=source/$(filename).glyphs
otfDIR=fonts/otf
ttfDIR=fonts/ttf

build: dependencies $(SOURCE)
	rm -r fonts
	mkdir -p fonts
	mkdir -p $(otfDIR)
	mkdir -p $(ttfDIR)

	echo "Generating OTF and TTF..."
	fontmake -o otf \
	-g $(SOURCE) \
	--output-dir $(otfDIR)

	fontmake -o ttf \
	-g $(SOURCE) \
	--output-dir $(ttfDIR)

	rm -r master_ufo
	rm -r venv

test: dependencies
	fontbakery check-googlefonts $(ttfDIR)/*.ttf $(otfDIR)/*.otf

dependencies: venv
	echo "Installing requirements..."
	python3 -m pip install fontmake
	python3 -m pip install fontbakery

venv :
	echo "Activating Virtual Environment..."
	python3 -m venv venv
	./venv/bin/activate