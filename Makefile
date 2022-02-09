SRC = main.tex
PDF = $(SRC:.tex=.pdf)

.PHONY: all clean

all: $(PDF)

%.pdf: %.tex main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make -quiet $<

clean:
	latexmk -CA
