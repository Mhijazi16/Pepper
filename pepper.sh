#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "🚨 Usage: pepper <filename.cpp>"
    exit 1
fi
