.PHONY: all
all:
	mkdir -p output
	for f in LineareAlgebra LineareAlgebra_pr it2 it2_pr; \
	do \
	    pdflatex -output-directory=output $$f.tex; \
			pdflatex -output-directory=output $$f.tex; \
	done
	rm output/*.aux
	rm output/*.log
	rm output/*.toc
	rm output/*.out
