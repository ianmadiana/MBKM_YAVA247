# Variables in shell

Variabel dalam shell scripting adalah simbol yang digunakan untuk menyimpan dan mengelola data. Mereka memungkinkan Anda untuk menyimpan informasi yang dapat diakses dan digunakan oleh skrip shell Anda. Di bawah ini adalah penjelasan tentang berbagai aspek penggunaan variabel dalam lingkungan shell:

## Nama Variabel:

Nama variabel harus dimulai dengan huruf atau garis bawah _, diikuti oleh huruf, angka, atau garis bawah.
Tidak boleh menggunakan spasi atau karakter khusus dalam nama variabel.
Mendefinisikan Variabel:

Anda dapat mendefinisikan variabel dengan menetapkan nilai kepadanya. Contohnya: nama="John".
Tidak perlu mendeklarasikan tipe variabel seperti dalam bahasa pemrograman lain. Shell secara otomatis menentukan tipe variabel berdasarkan nilai yang diberikan.
Mengakses Nilai:

## Mengakses nilai variabel
gunakan tanda $ diikuti oleh nama variabel. Contoh: 
```sh
echo $nama akan mencetak nilai "John"
```
## Variabel read-only:

Anda dapat membuat variabel hanya bisa dibaca (read-only) dengan menggunakan perintah readonly. Misalnya: `readonly nama`

## Unsetting Variabel:

Variabel dapat dihapus menggunakan perintah unset. Misalnya: `unset nama`

## Jenis Variabel:

Variabel Lingkungan (Environment Variables): Variabel-variabel ini dapat diakses oleh berbagai program dan skrip dalam lingkungan sistem. Contoh variabel lingkungan yang umum adalah PATH, HOME, dan USER.

### Variabel Lokal: 
Variabel yang hanya berlaku dalam skrip atau proses tertentu. Mereka tidak akan terlihat oleh program lain yang berjalan secara terpisah.

### Variabel Argumen Skrip (Command-Line Arguments): 
Ketika Anda menjalankan skrip dengan argumen yang dilewatkan di baris perintah, variabel seperti $1, $2, dll., akan mewakili argumen-argumen ini dalam skrip.

### Variabel Khusus: 
Ada variabel bawaan yang memiliki makna khusus, seperti $? yang berisi kode keluaran dari perintah terakhir, $ $ yang berisi ID proses skrip saat ini, dan lain-lain.

### Variabel Array: 
Anda dapat membuat variabel yang berisi beberapa nilai dalam bentuk array.

Penggunaan variabel dalam shell scripting sangat penting untuk menyimpan data sementara, berkomunikasi antara program, dan melakukan manipulasi data. Dengan memahami cara mendefinisikan, mengakses, dan mengelola variabel, Anda dapat membuat skrip shell yang lebih kuat dan efisien.