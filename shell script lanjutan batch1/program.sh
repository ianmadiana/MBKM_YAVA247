#!/bin/bash

file="target.txt"

# Menghitung jumlah kata
word_count=$(cat "$file" | wc -w)
echo "Jumlah kata dalam file: $word_count"

# Menghitung jumlah line
line_count=$(cat "$file" | wc -l)
echo "Jumlah line dalam file: $line_count"

# Menampilkan kata yang mengandung "amet"
echo "Kata yang mengandung \"amet\":"
grep "amet" "$file"

# Menghitung jumlah kata "amet"
amet_count=$(grep -o "amet" "$file" | wc -l)
echo "Jumlah kata \"amet\": $amet_count"
