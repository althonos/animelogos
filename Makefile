
PNG := $(patsubst src/%.svg,build/%.png,$(wildcard src/*.svg))

all: $(PNG)

build/%.png: src/%.svg
	inkscape $< --export-png $@
