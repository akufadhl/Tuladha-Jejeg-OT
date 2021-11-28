thisFont = Glyphs.font

letter = {}
pasangan = {}

for glyph in thisFont.glyphs:
	for layer in glyph.layers:
		
		if glyph.category == "Letter" and glyph.export == 1 and glyph.script == "javanese":
			if glyph.name not in letter:
				letter[glyph.name] = []
				letter[glyph.name].append(int(layer.bounds.size.width))

		for anchor in layer.anchors:
			
			if glyph.category == "Mark" and glyph.export == 1 and glyph.script == "javanese":
				if anchor.name == '_bottom':
					#print(glyph.name, int(layer.anchors['_bottom'].position.x))
					if glyph.name not in pasangan:
						pasangan[glyph.name] = []
						pasangan[glyph.name].append(int(layer.anchors['_bottom'].position.x) - int(layer.bounds.origin.x))

#print(letter,"\r",pasangan)
features = ""
for v, w in letter.items():
	for x, y in pasangan.items():
		if y > w:
			for a in w:
				for b in y:
						pass
						features += f"pos [@belowForm @Descenders] {v}' {x} <{b-a} 0 {b-a} 0>;\n"
						#print()

thisFont.features.append(GSFeature('kern', features))