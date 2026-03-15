FIGURES = teaser phases migration metrics trustgp roadmap
PDFS = $(addsuffix .pdf,$(FIGURES))

all: $(PDFS)

%.pdf: %.tex
	pdflatex -interaction=nonstopmode $<

clean:
	rm -f *.aux *.log *.pdf

.PHONY: all clean
