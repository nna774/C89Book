TARGET = c99Book

all: pdf

pdf:
	xelatex $(TARGET)
	bibtex  $(TARGET)
	xelatex $(TARGET)
	xelatex $(TARGET)


.PHONY: clean

RM=rm -f
clean: 
	$(RM) *.aux *.log  *.out  *.pdf *.run.xml *.blg $(TARGET)-blx.bib *.bbl
