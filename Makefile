LATEX_FILES=$(wildcard */*.tex)
PNG_FILES=$(wildcard img/*.png)

RCHL-2019-Rules.pdf: RCHL-2019-Rules.tex
	pdflatex $^ && pdflatex $^

RCHL-2019-Rules.pdf: ${LATEX_FILES} ${PNG_FILES}

clean:
	rm -rf *.aux *.log *.out *.toc
