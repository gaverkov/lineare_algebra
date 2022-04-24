.PHONY: all
all:
	mkdir -p output
	pdflatex -output-directory=output LineareAlgebra.tex
	pdflatex -output-directory=output LineareAlgebra.tex
	pdflatex -output-directory=output LineareAlgebra_pr.tex
	pdflatex -output-directory=output LineareAlgebra_pr.tex
	rm output/*.aux
	rm output/*.log
	rm output/*.toc
	rm output/*.out
