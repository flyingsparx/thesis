#!/bin/bash
#
# Script to build thesis. Supports bibtex-ing and word counting and opens typeset
# PDF at the end (as long as 'open' works on your system - e.g. on  OS X).
#
# Prerequisite programs required on system path:
#   - pdflatex (Installed as standard on most TeX distributions)
#   - bibtex (Installed as standard on most TeX distributions)
#   - texcount (Download from: http://app.uio.no/ifi/texcount)

# Get current timestamp in order to time the typeset procedure.
T="$(date +%s)"

printf "\nStarting thesis build.\n\n"

# Run pdflatex typeset
echo "--> Running typeset..."
pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex | grep ".*:[0-9]*:.*">&2   

# If relevant switch provided, also run bibtex followed by two further typesets
case "$1" in
    -b)
        printf "Done.\n--> Running BibTeX..."  
        bibtex main.aux | grep "Error"
        printf "\nDone.\n--> Running second typeset..."
        pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex > /dev/null
        printf "\nDone.\n--> Running final typeset..."
        pdflatex -shell-escape -interaction=nonstopmode -file-line-error main.tex > /dev/null
esac

# Try and open the typeset file in default application (this will probably only work on OS X)
open main.pdf

# Count the words in main source file and any included source files
printf "\nDone.\n--> Counting words...\n"
texcount -merge main.tex 2>&1 | grep 'Words\|Number'

# Delete messy files (don't show error if files don't exist)
rm main.{blg,dvi,glo,ist,lof,log,lot,out,ps,toc,loa} > /dev/null 2>&1
rm texput.log > /dev/null 2>&1

# Calculate time elapsement
T="$(($(date +%s)-T))"

# All done :)
printf "\n\nThesis build completed in ${T} seconds.\n\n"
