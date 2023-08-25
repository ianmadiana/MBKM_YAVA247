#!/bin/bash

dest_folder="/home/ianation/Documents/book_times/assets/icons"
csv_file="file_info.csv"

# Menghapus file CSV jika sudah ada sebelumnya
rm -f "$csv_file"

# Menulis header untuk file CSV
echo "Nama File,Jenis File,Ukuran" >> "$csv_file"

# Menggunakan loop untuk mendapatkan informasi dari setiap file
for file in "$dest_folder"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        file_type=$(file -b --mime-type "$file")
        file_size=$(du -h "$file")
        echo "$filename,$file_type,$file_size" >> "$csv_file"
    fi
done

echo "Informasi file telah disimpan dalam $csv_file"
