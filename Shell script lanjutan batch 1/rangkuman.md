# Word Count 1
Mencari kata tertentu di sebuah file:
```sh
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
```
Hasil output:
![SS](https://iili.io/HywfVkb.png)

# Word Count 2
Mengubah dari kata "amet" menjadi "tema":
```sh
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
```
![SS](https://iili.io/HywB15u.png)


# Edit data
Mengedit data CSV dengan menambahkan ID dan Code random serta mengganti delimiter koma (,) menjadi pipiline (|):

Data tabel.csv:
![SS](https://iili.io/HywBQ7n.png)
```sh
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
```

Hasil output:
![ss](https://iili.io/HywCYhv.png)