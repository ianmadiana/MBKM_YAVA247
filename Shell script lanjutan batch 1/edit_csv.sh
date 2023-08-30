#!/bin/bash

file="tabel.csv"
output="update_tabel.csv"

range_code=({100..900})
echo "id|nama|jabatan|umur|gaji|code" > "$output"

i=1
while IFS=, read -r nama jabatan umur gaji;
do
  if [ $i -gt 1 ]; then
    id=$(printf "%04d" $((i - 1)))
    code=${range_code[$((RANDOM % ${#range_code[@]}))]}
    echo "$id|$nama|$jabatan|$umur|$gaji|$code" >> "$output"
  fi
  ((i++))
done < "$file"

echo "Update file CSV Selesai"