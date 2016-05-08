#!/bin/bash

file="thesis-paper"

rm *.aux *.fls *.fdb_latexmk *.log *.acn *.acr *.glg *.gls *.glo *.ist *.run.xml *.bcf *.out *.lot *.lof *.ilg *.blg *.bbl *.toc
latexmk -pdf "$file.tex"
makeglossaries "$file.glo"
makeindex -s "$file.ist" -o "$file.acr" "$file.acn"
rm *.pdf
latexmk -pdf "$file.tex"

