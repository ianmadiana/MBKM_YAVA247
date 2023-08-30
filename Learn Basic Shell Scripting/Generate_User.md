# Generate User with password

```sh
#!/bin/bash

# nama file
csv_file="user_data.csv"

# hapus file csv jika ada
if [ -e "$csv_file" ]; then
    rm "$csv_file"
fi

# header file CSV
echo "Name,Username,Password" > $csv_file

# fungsi untuk menghasilkan kata sandi acak sesuai pola
# username+random 1-9+@+!
generate_password() {
    local names="$1"
    local random_number=$(shuf -i 1-9 -n 1)
    local password="${names}${random_number}@!"
    # Menghapus karakter ' dari password
    password=$(echo "$password" | tr -d "'")
    echo "$password"
}

# fungsi untuk menghasilkan username yang tidak mengandung simbol
generate_username() {
    local names="$1"
    local filter_username=$(echo "$names" | tr '[:upper:]' '[:lower:]' | tr ' ' '_' | tr -d "'")
    echo "$filter_username"
}

# menambahkan pengguna name ke dalam file CSV
for ((i=1; i<=$1; i++)); do
    names=$(shuf -n 1 /usr/share/dict/words)
    username=$(generate_username "$names")
    password=$(generate_password "$names")
    
    # tambahkan baris user ke file CSV
    echo "$names,$username,$password" >> $csv_file
done

echo "File user telah dibuat"
```

Hasil output:
![](https://iili.io/HyOcMhl.md.png)