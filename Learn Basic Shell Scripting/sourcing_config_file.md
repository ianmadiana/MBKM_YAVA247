# Sourcing a config file

Sourcing a config file dalam shell scripting merujuk pada proses memasukkan (melakukan source) konten dari sebuah berkas konfigurasi ke dalam skrip shell Anda. Ini sangat berguna ketika Anda ingin memisahkan pengaturan dan konfigurasi dari kode utama skrip Anda, sehingga Anda dapat mengubah konfigurasi tanpa harus mengubah skrip secara langsung.

Pada umumnya, berkas konfigurasi adalah berkas teks biasa yang berisi variabel-variabel dan pengaturan yang akan digunakan dalam skrip. Misalnya, Anda mungkin ingin menyimpan pengaturan seperti alamat server, nama pengguna, kata sandi, dan lainnya dalam berkas konfigurasi terpisah.

## Contoh `config.sh`
```sh
# config.sh
server_address="example.com"
username="user123"
password="secretpassword"
```

Dan ini adalah contoh skrip utama yang menyertakan berkas konfigurasi:
```sh
#!/bin/bash

# Memuat (menyertakan) berkas konfigurasi
source config.sh

echo "Menghubungkan ke server di $server_address"
echo "Login dengan username: $username dan password: $password"
```

Dalam skrip ini, perintah source config.sh akan membaca dan menjalankan kode dalam berkas config.sh, sehingga variabel-variabel seperti server_address, username, dan password akan menjadi tersedia dalam skrip utama.

Ini memiliki keuntungan karena Anda dapat dengan mudah mengubah pengaturan dalam berkas konfigurasi tanpa harus mengubah skrip utama. Jika ada perubahan dalam pengaturan, Anda hanya perlu mengubah berkas konfigurasi tanpa merusak skrip utama.