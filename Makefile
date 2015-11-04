TARGET = c99Book

XELATEX = xelatex -interaction=nonstopmode

all: pdf

pdf:
	$(XELATEX) $(TARGET)
	bibtex  $(TARGET)
	$(XELATEX) $(TARGET)
	$(XELATEX) $(TARGET)


.PHONY: clean

RM=rm -f
clean: 
	$(RM) *.aux *.log  *.out  *.pdf *.run.xml *.blg $(TARGET)-blx.bib *.bbl
