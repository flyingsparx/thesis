#!/bin/bash
#
# Script to go through PNG files and ensure they are fully compatible with the LaTeX typesetter

for i in $(find . -type f -name "*.png")
do
convert $i -strip $i
done
