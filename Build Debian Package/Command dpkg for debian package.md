# Apa itu deb packages

File deb adalah adalah sebuah file `arsip ar `yang mengandung data. Ditandai dengan ekstensi `.deb`, digunakan untuk mempermudah pendistribusian dan install program untuk Linux Debian serta turunannya. File Deb sangat mudah ketika memerlukan berbagai macam dependensi, mengintegrasikan dirinya dengan desktop, menjalankan skrip sebelum dan sesudah instalasi, dan sebagainya. Ada dua macam tipe file Debian:

## 1. Binary packages

Binary packages berisi executable, file konfigurasi, halaman manual/info, informasi hak cipta, dan dokumentasi lainnya. Paket-paket ini didistribusikan dalam format arsip khusus Debian. biasanya ditandai dengan memiliki ekstensi file '.deb'. Paket biner dapat dibongkar menggunakan utilitas Debian `dpkg`.

## 2. Source packages

Paket sumber Debian (Debian source packages) adalah kumpulan berkas sumber dan berkas kontrol yang digunakan untuk membuat paket Debian biner (.deb) dari sumber kode program. Paket sumber Debian berisi seluruh kode sumber program, berkas konfigurasi, dan berkas kontrol yang diperlukan untuk membangun paket biner yang dapat diinstal pada sistem Debian.

# Macam-macam perintah dpkg

1. Menginstal paket Debian:
   ```sh
   sudo dpkg -i nama-paket.deb
   ```
2. Menghapus paket Debian:
   ```sh
   sudo dpkg -r nama_paket
   ```
3. Membersihkan paket Debian:
   ```sh
   sudo dpkg --purge nama_paket
   ```
4. Menampilkan daftar paket yang terinstal:
   ```sh
   dpkg -l
   ```
5. Mengambil informasi tentang sebuah paket:
   ```sh
   dpkg -I paket.deb
   ```
6. Mencari paket:
   ```sh
   dpkg -l | grep nama_paket
   ```
7. Mengonfigurasi ulang paket yang terinstal:
   ```sh
   sudo dpkg --configure nama_paket
   ```