LATEX_FILES=$(wildcard */*.tex)
PNG_FILES=$(wildcard img/*.png)

RCHL-2020-Rules.pdf: RCHL-2020-Rules.tex
	pdflatex $^ && pdflatex $^

RCHL-2020-Rules.pdf: ${LATEX_FILES} ${PNG_FILES}

clean:
	rm -rf *.aux *.log *.out *.toc
