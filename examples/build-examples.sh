#!/bin/bash
set -e
cp "../eisvogel.tex" "../eisvogel.latex"

echo "##"
echo "# Building examples"
echo "##"
echo ""

echo "- header-and-footer"
pandoc "header-and-footer/header-and-footer.md" -o "header-and-footer/header-and-footer.pdf" --from markdown --template "../eisvogel.latex" --listings --resource-path "./header-and-footer/"
pdftoppm -r 150 -png "header-and-footer/header-and-footer.pdf" > "header-and-footer/header-and-footer.png"

rm "../eisvogel.latex"