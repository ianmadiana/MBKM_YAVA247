## Linux Filter Commands

Perintah Filter Linux menerima data masukan dari stdin (input standar) dan menghasilkan keluaran pada stdout (output standar). Ini mengubah data teks biasa menjadi bentuk yang bermakna dan dapat digunakan dengan pipa untuk melakukan operasi yang lebih kompleks.

Filter-filter ini adalah program-program yang sangat kecil yang dirancang untuk fungsi tertentu yang dapat digunakan sebagai blok pembangunan.
| Perintah | Deskripsi                                 | Contoh Penggunaan                               |
|----------|-------------------------------------------|-------------------------------------------------|
| cat      | Menggabungkan dan menampilkan isi berkas  | `cat file.txt`                                 |
| cut      | Memotong dan menampilkan bagian teks      | `cut -d ',' -f 2 file.csv`                     |
| grep     | Menyaring baris berdasarkan pola          | `grep "keyword" file.txt`                     |
| comm     | Membandingkan dua berkas terurut          | `comm file1.txt file2.txt`                    |
| sed      | Mengedit dan memanipulasi teks            | `sed 's/old/new/g' file.txt`                  |
| tee      | Menulis output ke berkas dan layar        | `ls -l | tee file.txt`                        |
| tr       | Mengganti karakter atau menghapus karakter | `echo "Hello" | tr 'a-z' 'A-Z'`                   |
| uniq     | Menampilkan baris unik dari berkas        | `sort file.txt | uniq`                        |
| wc       | Menghitung kata, baris, dan karakter      | `wc -l file.txt`                              |
| od       | Menampilkan berkas dalam format oktal      | `od -c file.txt`                              |
| sort     | Mengurutkan baris berdasarkan teks        | `sort file.txt`                               |
| gzip     | Kompresi berkas                           | `gzip file.txt`                               |
