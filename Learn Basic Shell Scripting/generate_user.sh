#!/bin/bash

# nama file
csv_file="user_data.csv"

# hapus file csv jika ada
if [ -e "$csv_file" ]; then
    rm "$csv_file"
fi

names=("Adzana" "Amanda" "Angelina" "Aurellia" "Azizi" "Febriola" "Shania")

# fungsi untuk menghasilkan nama acak dari array names
name_gen(){
    name=""
    for _ in {1..2}; do
        full_name=${names[$((RANDOM % ${#names[@]}))]}
        name="$name $full_name"
    done
    echo "$name"
}

# header file CSV
echo "Name|Username|Password" > $csv_file

# fungsi untuk menghasilkan kata sandi acak sesuai pola
# username+random 1-9+@+!
generate_password() {
    local names="$1"
    local random_number=$(shuf -i 1-9 -n 1)
    local password="${names}${random_number}@!"
    # Menghapus karakter ' dari password
    password=$(echo "$password" | tr -d ' ')
    echo "$password"
}

# fungsi untuk menghasilkan username yang tidak mengandung simbol
generate_username() {
    local names="$1"
    local filter_username=$(echo "$names" | tr '[:upper:]' '[:lower:]' | tr -d ' ')
    echo "$filter_username"
}

# Jumlah pengguna yang akan dibuat diambil dari parameter yang dimasukkan
for ((i=1; i<=$1; i++)); do
    random_name=$(name_gen)
    username=$(generate_username "$random_name")
    password=$(generate_password "$random_name")
    
    # tambahkan baris user ke file CSV
    echo "$random_name|$username|$password" >> $csv_file
done

sed -i 's/^ *//' "$csv_file"
echo "File user telah dibuat"
