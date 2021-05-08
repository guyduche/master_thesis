.PHONY: clean
BASENAME=master_thesis

GUY-DUCHE_$(BASENAME).pdf: $(BASENAME).tex bibliography.bib
	latex $<
	makeglossaries $(BASENAME)
	makeglossaries $(BASENAME)
	bibtex $(BASENAME)
	latex $<
	latex $<
	latex $<
	dvips $(BASENAME).dvi
	ps2pdf $(BASENAME).ps $@

clean:
	rm -f $(addprefix $(BASENAME), .ps .dvi .toc .ist .glo .acn .acr .alg .lof .bbl .blg .glg .gls .out .log) *.aux GUY-DUCHE_$(BASENAME).pdf
