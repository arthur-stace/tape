diagrams:
	plantuml -tpng docs/**/*.uml


DIAGRAMS = $(wildcard docs/**/*.png)

README.md: diagrams
	for item in $(DIAGRAMS); do echo "![`dirname $$item`](./$$item)" >> $@; done
