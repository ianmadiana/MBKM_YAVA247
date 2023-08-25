#!/bin/bash

# nama file
csv_file="user_data.csv"

# hapus file csv jika ada
if [ -e "$csv_file" ]; then
    rm "$csv_file"
fi

# array nama
names=("Arya" "Bunga" "Cakra" "Dinda" "Eka" "Fajar" "Gita" "Hadi" "Indra" "Joko")

# header file CSV
echo "Name,Username,Password" > $csv_file

# fungsi untuk menghasilkan kata sandi acak sesuai pola
# username+1..array length+@+!
generate_password() {
    local username="$1"
    local password="${username}$(shuf -i 1-${#names[@]} -n 1)@!"
    echo "$password"
}

# menambahkan pengguna dari array name ke dalam file CSV
for ((i=0; i<${#names[@]}; i++)); do
    username=$(echo "${names[i]}" | tr '[:upper:]' '[:lower:]') # ubah menjadi lowercase
    password=$(generate_password $username)
    
    # tambahkan baris user ke file CSV
    echo "${names[i]},$username,$password" >> $csv_file
done

echo "File user telah dibuat dengan ${#names[@]} pengguna dan kata sandi."
