.PHONY: default all clean version.tex dvi

VARIABLES=-V title=test -V author='Ross Orchard'
TEMPLATE=HDR.tex

# LaTeX files that actually comprise the book
# (that is, all of them except configuration)
BOOKMDFILES = md/ImageAnalysis.md \
	md/chp1.md



default: $(BOOKMDFILES)
	pandoc $(BOOKMDFILES) -o file.tex $(VARIABLES) --template=$(TEMPLATE) --chapters
	pdflatex file.tex file.pdf




