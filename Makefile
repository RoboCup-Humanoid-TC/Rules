LATEX_FILES=$(wildcard */*.tex) Rules-Core.tex
PNG_FILES=$(wildcard img/*.png)

TARGETS=RC-HL-2022-Rules.pdf RC-HL-2022-Rules-Changes-Marked.pdf

all: ${TARGETS}

%.pdf: %.tex ${LATEX_FILES} ${PNG_FILES}
	pdflatex $^ && pdflatex $^

clean:
	rm -rf *.aux *.log *.out *.toc
