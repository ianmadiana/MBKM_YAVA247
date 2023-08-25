# variable in shell
Variabel dalam shell scripting digunakan untuk menyimpan dan mengelola data yang akan digunakan dalam skrip. Variabel dapat mengandung angka, teks, atau kombinasi keduanya. Anda dapat menggunakan variabel untuk menyimpan hasil perhitungan, hasil eksekusi perintah, nama file, dan banyak lagi.

Berikut adalah cara menggunakan variabel dalam shell scripting:

Deklarasi Variabel:
Deklarasi variabel dilakukan dengan memberikan nama variabel dan memberi nilai kepadanya. Tidak perlu ada spasi di antara tanda sama dengan (=) dan nilai variabelnya.

```sh
nama="John"
umur=30
Mengakses Nilai Variabel:
Untuk mengakses nilai variabel, Anda perlu menggunakan tanda $ di depan nama variabel.
```

Variabel dalam shell scripting bersifat teks atau string secara default. Jika Anda ingin melakukan perhitungan atau operasi matematika dengan variabel angka, Anda perlu menggunakan ekspresi aritmatika seperti $(()) seperti yang ditunjukkan dalam contoh sebelumnya.

Variabel juga dapat digunakan untuk mengatur alur eksekusi skrip, menyimpan hasil eksekusi perintah, dan banyak lagi. Jangan lupa bahwa variabel shell bersifat lokal, kecuali jika dinyatakan sebagai variabel lingkungan. Jadi, mereka hanya akan ada selama eksekusi skrip dan tidak akan terlihat oleh proses lain di luar skrip tersebut.