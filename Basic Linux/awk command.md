## AWK command
Perintah awk adalah alat pemrosesan teks yang kuat di sistem operasi Linux dan Unix. Nama "awk" diambil dari inisial nama tiga penciptanya: Alfred Aho, Peter Weinberger, dan Brian Kernighan. Perintah ini digunakan untuk membaca, memanipulasi, dan memformat teks atau data dalam berkas atau aliran masukan (stdin) dan menghasilkan keluaran yang diinginkan.

Pada dasarnya, awk bekerja dengan pola dan aksi. Anda dapat memberikan pola yang mendefinisikan kondisi yang harus dipenuhi, dan aksi yang akan dijalankan ketika pola cocok. Perintah awk membaca berkas baris per baris, memeriksa setiap baris terhadap pola yang diberikan, dan jika pola cocok, aksi yang sesuai akan dijalankan.

Contoh penggunaan umum awk meliputi:

Menampilkan kolom tertentu dari berkas teks (misalnya, mencetak hanya kolom kedua dari setiap baris).
Melakukan perhitungan matematika pada data dalam kolom-kolom tertentu.
Menyaring baris yang memenuhi pola tertentu.
Memformat dan mengubah struktur data dalam berkas.
Berikut adalah contoh penggunaan awk untuk menampilkan hanya kolom pertama dari setiap baris dalam berkas data.txt:

```bash
awk '{print $1}' data.txt
```
Pada contoh di atas, `{print $1}` adalah aksi yang menginstruksikan awk untuk mencetak kolom pertama dari setiap baris.

awk adalah alat yang kuat dan serbaguna untuk pemrosesan teks dalam lingkungan Linux, dan memiliki banyak fitur dan kemampuan yang dapat membantu dalam manipulasi dan analisis data teks.