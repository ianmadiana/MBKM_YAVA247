#!/bin/bash

output_file="tabel.csv"

echo " Nama, Jabatan, Umur, Gaji" > "$output_file"

range_umur=({17..35})
range_gaji=({5000..45000})

i=1
while [ $i -le $1 ]; do
  nama=$(shuf -n 1 /usr/share/dict/words)
  jabatan=$(shuf -n 1 /usr/share/dict/words)
  umur=${range_umur[$((RANDOM % ${#range_umur[@]}))]}
  gaji=${range_gaji[$((RANDOM % ${#range_gaji[@]}))]}
  echo "$nama, $jabatan, $umur, $gaji" >> "$output_file"
  ((i++))
done

echo "Tabel berhasil dibuat"