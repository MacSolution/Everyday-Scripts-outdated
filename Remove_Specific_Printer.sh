#!/bin/bash

## By Lucas Almeida, from MacSolution. November 12th 2019.
## By Lucas Almeida - https://github.com/LucasAlmeida-MS

# Specify printer's name on PRINTER_NAME
Printer=$(lpstat -p | awk '{print $2}' | grep -a PRINTER_NAME)

if [ $Printer = "PRINTER_NAME" ]; then 
    lpadmin -x $Printer
    exit 0
else
    exit 0
fi