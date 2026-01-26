#! /bin/bash

python3 main.py
typst c ./outputs/outputs.typ
zathura ./outputs/outputs.pdf
