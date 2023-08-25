# Shell I/O Redirection

## 1. Output Redirection (Pengalihan Keluaran):
Output redirection adalah teknik dalam shell di mana Anda mengarahkan keluaran yang biasanya akan dicetak di layar atau terminal ke suatu file atau alat lain. Simbol umum yang digunakan untuk output redirection adalah >. Misalnya, perintah ls > file.txt akan mengambil hasil dari perintah ls (daftar konten direktori) dan menyimpannya dalam file bernama file.txt daripada mencetaknya di layar.

## 2. Input Redirection (Pengalihan Masukan):
Input redirection adalah cara untuk memberikan input ke suatu program atau perintah dari file daripada dari keyboard. Simbol yang umum digunakan untuk input redirection adalah <. Contohnya, sort < input.txt akan mengambil isi dari file input.txt dan menggunakannya sebagai masukan untuk perintah sort.

## 3. Here Document:
Here document adalah cara untuk memberikan input multiline langsung ke suatu perintah tanpa perlu menggunakan file sementara. Ini sangat berguna saat Anda ingin memberikan input yang lebih panjang atau rumit. Formatnya biasanya seperti ini:

```sh
command <<EOF
This is the input
It can span multiple lines
EOF
```
Di sini, command adalah perintah yang akan menerima input, dan teks di antara `<<EOF` dan `EOF` adalah masukan yang akan diberikan kepada perintah tersebut.

## 4. Discard the Output (Mengabaikan Keluaran):
Kadang-kadang, Anda mungkin ingin menjalankan suatu perintah tetapi tidak ingin melihat keluaran atau hasilnya. Anda dapat melakukan ini dengan mengalihkan keluaran ke /dev/null, yang merupakan perangkat khusus yang secara efektif membuang keluaran. Contoh: command `> /dev/null`.

## 5. Redirection Commands:
Terdapat beberapa perintah yang berguna untuk pengalihan input/output dalam shell:

- `>`: Mengalihkan keluaran ke file (menimpa jika sudah ada).
- `>>`: Mengalihkan keluaran ke file (menambahkan ke konten yang sudah ada).
- `<`: Mengalihkan masukan dari file.
- `2>`: Mengalihkan keluaran kesalahan standar (stderr) ke file.
- `2>&1`: Mengalihkan stderr ke aliran keluaran standar (stdout).
- `&>`: Mengalihkan baik stdout maupun stderr ke file.
- `<<`: Menggunakan here document.
- `/dev/null`: Mengabaikan keluaran.
  
Pengalihan input/output adalah konsep penting dalam lingkungan shell karena memungkinkan Anda untuk mengelola aliran masukan dan keluaran perintah dengan lebih fleksibel, serta menyimpan atau membuang keluaran sesuai kebutuhan.