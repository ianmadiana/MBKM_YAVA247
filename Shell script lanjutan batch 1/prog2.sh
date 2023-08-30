#!/bin/bash

# Target file
target="target.txt"

# Jumlah kata
w_count=$(cat "$target" | wc -w)
echo "Jumlah kata = $w_count"

# Jumlah baris
w_line=$(cat "$target" | wc -l)
echo "Jumlah line = $w_line"

# Cari kata "amet" dan jumlahnya
w_amet=$(grep -o -i "amet" "$target" | wc -w)
echo "Jumlah kata yang mengandung amet: $w_amet"

echo "------------------amet to tema---------------------"

# Ubah kata "amet" & "Amet" > "tema" & "Tema"
sed 's/amet/tema/g; s/Amet/temA/g' "$target" > hasil.txt
echo "Hasil disimpan dalam file hasil.txt"

# Target file
hasil_tema="hasil.txt"

# Jumlah kata
w_count=$(cat "$hasil_tema" | wc -w)
echo "Jumlah kata = $w_count"

# Jumlah line
w_line=$(cat "$hasil_tema" | wc -l)
echo "Jumlah line = $w_line"

# Cari kata "tema" dan jumlahnya
w_tema=$(grep -o -i "tema" "$hasil_tema" | wc -w)
echo "Jumlah kata yang mengandung tema = $w_tema"

