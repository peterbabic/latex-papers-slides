#!/bin/bash

#cd "figures/"
file="$1"
filename="${file%.*}"

unoconv "$filename.odg" ".pdf"
pdfcrop --margins 2 "$filename.pdf" "$filename.pdf" 
