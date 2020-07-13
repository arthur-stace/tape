default:
	plantuml -tpng docs/components/*.uml
	open docs/**/*.png
