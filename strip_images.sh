#!/bin/bash
#
# Script to go through PNG files and ensure they are fully compatible with the LaTeX typesetter.
#
# This solves issues with RGB profiles reported by the typesetter.

for i in $(find . -type f -name \*.png)
do
printf "Converting $i ... \n"
convert $i -strip $i
done
