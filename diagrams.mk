diagrams:
	plantuml -tpng docs/**/*.uml


DIAGRAMS = $(wildcard docs/**/*.png)

docs/%/*.uml:
	plantuml -tpng $@
	echo `dirname $@`

README.md: diagrams
	for item in $(DIAGRAMS); do echo "![`dirname $$item`](./$$item)" >> $@; done

clean:
	rm -rf docs/**/*.png
