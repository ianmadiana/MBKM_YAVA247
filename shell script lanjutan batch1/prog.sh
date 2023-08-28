#!/bin/bash

#target file
target="target.txt"

#jumlah kata
w_count=$(cat "$target" | wc -w)
echo "Jumlah kata = $w_count"
#jumlah line
w_line=$(cat "$target" | wc -l)
echo "Jumlah line = $w_line"
#cari kata "amet" dan jumlahnya
w_amet=$(grep -o -i "amet" "$target" | wc -w)
echo "Jumlah kata yang mengandung amet: $w_amet"

