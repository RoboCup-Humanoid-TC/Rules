LATEX_FILES=$(wildcard */*.tex)
PNG_FILES=$(wildcard img/*.png)

RCHL-2018-Rules-Proposal.pdf: RCHL-2018-Rules-Proposal.tex
	pdflatex $^ && pdflatex $^

RCHL-2018-Rules-Proposal.pdf: ${LATEX_FILES} ${PNG_FILES}
