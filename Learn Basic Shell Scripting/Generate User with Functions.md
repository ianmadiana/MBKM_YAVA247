# Update file generate user with password

## Fungsi generate user dengan parameter:

```sh
# Fungsi me-generate user with parameter
generate_user(){
    echo "----- Generate User -----"
    # nama file
    csv_file="user_data.csv"

    # hapus file csv jika ada
    if [ -e "$csv_file" ]; then
        rm "$csv_file"
    fi

    # header file CSV
    echo "Name|Username|Password" > $csv_file

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
        echo "$names|$username|$password" >> $csv_file
    done

    echo "File user telah dibuat"
}
```

## Fungsi menambah kolom ID dan Code:
```sh


# Fungsi untuk menambah data (ID & Code) dari file yang telah di-generate
edit_data(){
    echo "----- Edit Data -----"
    target="user_data.csv"
    output="update_tabel.csv"
        
    range_code=({100..900})
    
    echo "ID|Nama|Username|Password|Code" > "$output"

    i=1
    while IFS='|' read -r Nama Username Password;
    do
        if [ $i -gt 1 ]; then
        id=$(printf "%03d" $((i - 1)))
        code=${range_code[$((RANDOM % ${#range_code[@]}))]}
        echo "$id|$Nama|$Username|$Password|$code" >> "$output"
        fi
        ((i++))
    done < "$target"

    echo "Update Selesai"
}   
```
## Script untuk generate user dan edit file
```sh
#!/bin/bash

echo "----- Generate User -----"

# Fungsi me-generate user with parameter
generate_user(){
        # nama file
    csv_file="user_data.csv"

    # hapus file csv jika ada
    if [ -e "$csv_file" ]; then
        rm "$csv_file"
    fi

    # header file CSV
    echo "Name|Username|Password" > $csv_file

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
        echo "$names|$username|$password" >> $csv_file
    done

    echo "File user telah dibuat"
}

echo "----- Edit Data -----"

# Fungsi untuk menambah data (ID & Code) dari file yang telah di-generate
edit_data(){
    target="user_data.csv"
    output="update_tabel.csv"
        
    range_code=({100..900})
    
    echo "ID|Nama|Username|Password|Code" > "$output"

    i=1
    while IFS='|' read -r Nama Username Password;
    do
        if [ $i -gt 1 ]; then
        id=$(printf "%03d" $((i - 1)))
        code=${range_code[$((RANDOM % ${#range_code[@]}))]}
        echo "$id|$Nama|$Username|$Password|$code" >> "$output"
        fi
        ((i++))
    done < "$target"

    echo "Update Selesai"
}   

#panggil function
generate_user "$1"
edit_data

echo "Done"
```

Menjalankan script:
![](https://iili.io/HyOidLx.png)

Hasil output untuk generate_user():
![](https://iili.io/HyO6scP.png)

Hasil output untuk edit_data():
![](https://iili.io/HyOPKRn.png)