TEX := latexmk

TEX_MAIN_FILE := tesis
TEX_FLAGS := --shell-escape -synctex=1 -interaction=nonstopmode -file-line-error -pdf 

all: compile

compile: clean
	${TEX} ${TEX_FLAGS} ${TEX_MAIN_FILE}.tex
	make clean
	
clean:
	-rm -f *.synctex.gz
	-rm -f *.aux
	-rm -f *.fls
	-rm -f *.run.xml
	-rm -f *.log
	-rm -f *.toc
	-rm -f *.bbl
	-rm -f *.bcf
	-rm -f *.blg
	-rm -f *.out
	-rm -f *.fdb_latexmk

deep-clean: clean
	-rm -rf _minted-${TEX_MAIN_FILE}
	-rm ${TEX_MAIN_FILE}.pdf