#!/bin/bash
#
# Script to build thesis. Supports bibtex-ing and word counting and opens typeset
# PDF at the end.

printf "\nStarting build...\n\n"

case "$1" in
    -b)
        echo "Running with BibTeX..."  
        pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex | grep ".*:[0-9]*:.*"        
        bibtex main.aux | grep "Error"
        echo "BibTeX done. Running first typeset..."
        pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex | grep ".*:[0-9]*:.*"
    esac

echo "Typesetting..."
pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex | grep ".*:[0-9]*:.*"
open main.pdf
printf "Done. Counting words...\n\n"
texcount -merge main.tex 2>&1 | grep 'Words\|Number'

# Delete messy files (don't show error if files don't exist):
rm main.{bbl,blg,dvi,glo,ist,lof,log,lot,out,ps,toc} > /dev/null 2>&1
rm texput.log > /dev/null 2>&1


printf "\n\nBuild completed\n\n"
