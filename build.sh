#!/bin/bash
#
# Script to build thesis. Supports bibtex-ing and word counting and opens typeset
# PDF at the end.
#
# Requires the script 'texcount' to be installed.

printf "\nStarting thesis build...\n\n"

echo "Typesetting..."
pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex | grep ".*:[0-9]*:.*"        

case "$1" in
    -b)
        echo "Running BibTeX..."  
        bibtex main.aux | grep "Error"
        echo "BibTeX done. Running final typesets..."
        pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex > /dev/null
        pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex > /dev/null
esac

open main.pdf
printf "Done. Counting words...\n\n"
texcount -merge main.tex 2>&1 | grep 'Words\|Number'

# Delete messy files (don't show error if files don't exist):
rm main.{bbl,blg,dvi,glo,ist,lof,log,lot,out,ps,toc,loa} > /dev/null 2>&1
rm texput.log > /dev/null 2>&1


printf "\n\nThesis build completed.\n\n"
