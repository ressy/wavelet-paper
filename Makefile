latex = pdflatex
texfile = wavelets.tex
all:
	$(latex) $(texfile)
	bibtex wavelets.aux
	$(latex) $(texfile)
	$(latex) $(texfile)

clean:
	rm -f wavelets.{aux,dvi,log,bbl,blg,out}
