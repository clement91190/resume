all: resume

resume:
	TEXINPUTS=.:./config: pdflatex -interaction=nonstopmode -output-directory=output main.tex
	
clean:
	rm -f output/*

watch:
	latexmk -pdf -pvc -output-directory=output main.tex