#!/bin/bash

input_file="tabel.csv"
output_file="file_edit.csv"

# tambah header ID dan code
echo "ID|Nama|Jabatan|Umur|Gaji|Code" > "$output_file"

# menghitung jumlah baris data dalam file input
total_lines=$(wc -l < "$input_file")

# loop untuk membaca setiap baris data
for (( id=1; id<=$total_lines; id++ )); do
    # ID = 0001 - n
    format_id=$(printf "%04d" $id)
    
    # membaca baris data dari input_file
    data=$(sed -n "${id}p" "$input_file")
    
    # nomor acak 1000 dan 9999
    random_code=$((RANDOM % (9999 - 1000 + 1) + 1000))
    
    # delimiter koma > pipe
    data_with_pipe=$(echo "$data" | tr ',' '|')
    
    echo "$format_id|$data_with_pipe|$random_code" >> "$output_file"
done

echo "Done"
