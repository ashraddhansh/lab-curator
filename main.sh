#! /bin/bash

python3 ./src/main.py
typst c ./typst_source_and_export/outputs.typ
zathura ./typst_source_and_export/outputs.pdf
