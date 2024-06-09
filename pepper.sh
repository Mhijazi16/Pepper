#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "🚨 Usage: pepper <filename.cpp>"
    exit 1
fi

# Extract filename without extension
filename=$(basename -- "$1")
name="${filename%.*}"

# Compile the .cpp file using g++
echo "======================="
echo "🛠️ Compiling $filename..."
if g++ -o "$name" "$1"; then
    # Compilation successful, execute the binary
    echo "🌶️ Running $filename..."
    echo "======================="
    "./$name"
    rm -rf "./$name"
else
    # Compilation failed
    echo "🌵 Compilation failed for $filename"
fi


