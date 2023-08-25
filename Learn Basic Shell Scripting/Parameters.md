# Penggunaan Parameter di Shell Script

Dalam shell scripting, parameter merujuk pada nilai atau argumen yang diberikan kepada sebuah skrip atau perintah saat dijalankan. Parameter memungkinkan Anda untuk memberikan input ke dalam skrip atau perintah untuk mengatur perilaku atau mengambil nilai yang diperlukan.

## Jenis paramter di shell script:

### 1. Positional Parameters
adalah parameter yang diidentifikasi berdasarkan posisi mereka dalam baris perintah saat menjalankan skrip. Parameter pertama dikenali sebagai $1, parameter kedua sebagai $2, dan seterusnya. Misalnya, jika ingin menjalankan skrip dengan `./myscript.sh arg1 arg2` , maka $1 akan berisi "arg1" dan $2 akan berisi "arg2".

### 2. Special Parameters
Ada beberapa parameter khusus yang memiliki makna khusus di dalam shell scripting. Beberapa di antaranya adalah:
- `$0`: Nama skrip itu sendiri.
- `$#`: Jumlah argumen yang diberikan.
- `$?`: Kode keluaran (exit code) dari perintah terakhir yang dijalankan.
- `$ $`: ID proses dari skrip yang sedang berjalan.
  
### 3. Variable Parameters
adalah variabel yang Anda tetapkan nilainya dalam shell. Anda dapat mengakses nilai variabel ini dengan menggunakan tanda $. Misalnya, jika Anda memiliki variabel name="John", Anda dapat mengakses nilai tersebut dengan $name.

### 4. Array Parameters: 
Dalam beberapa bahasa shell, seperti Bash, Anda dapat menggunakan array untuk menyimpan sejumlah nilai. Anda dapat mengakses nilai dalam array dengan indeks. Contoh: `${array[0]}`

### 5. Environment Variables: 
adalah variabel yang tersedia di seluruh lingkungan shell. Misalnya, `$HOME` merujuk pada direktori beranda pengguna.

## Contoh penggunaan
```sh
#!/bin/bash

names=("Arya" "Bunga" "Cakra" "Dinda" "Eka" "Fajar" "Gita" "Hadi" "Indra" "Joko")

# Mengambil panjang array names
length=${#names[@]}

echo "Panjang array names adalah $length" #10
```
