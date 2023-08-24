# Apa itu Shell Script?

Shell script adalah serangkaian perintah yang dieksekusi dalam sebuah lingkungan shell atau antarmuka baris perintah pada sistem operasi. Lingkungan shell adalah cara untuk berinteraksi dengan sistem operasi menggunakan teks atau baris perintah. Dalam konteks ini, shell script adalah teks atau kumpulan perintah yang dieksekusi oleh shell untuk melakukan berbagai tugas atau fungsi tertentu.

Shell script umumnya digunakan untuk mengotomatisasi tugas-tugas, menjalankan serangkaian perintah dengan urutan tertentu, melakukan pengolahan data sederhana, dan melakukan administrasi sistem. Dengan menggunakan shell script, user dapat menjalankan perintah sistem, mengatur variabel, mengambil keputusan berdasarkan kondisi, dan melakukan berbagai tugas lainnya.

Urutan membuat shell script di linux:
1. Gunakan sintaks berikut untuk membuat file sh:
   ```sh
   touch demo.sh
   ```
2. Edit isi dari file tersebut:
   ```sh
   echo "Hello World!"
3. Untuk menjalankan script shell terdapat dua cara:
   1. Menggunakan perintah `bash`:
        ```sh
        bash demo.sh
        ```
   2. Menggunakan execute:
        Atur file agar bisa di-execute
        ```sh
        chmod +x demo.sh
        ```
   3. Jalankan dengan perintah:
        ```sh
        ./demo.sh
        ```