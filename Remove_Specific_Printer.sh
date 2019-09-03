#!/bin/bash
# Specify printer's name on PRINTER_NAME
## by Lucas Almeida - https://github.com/LucasAlmeida-MS

Printer=$(lpstat -p | awk '{print $2}' | grep -a PRINTER_NAME)

if [ $Printer = "PRINTER_NAME" ]; then 
    lpadmin -x $Printer
    exit 0
else
    exit 0
fi