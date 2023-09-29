# Membuat berkas control 

Berkas control adalah salah satu berkas yang digunakan dalam pembuatan dan pengelolaan paket Debian (.deb). Berkas ini berisi metadata dan informasi tentang paket Debian yang diperlukan oleh sistem manajemen paket Debian, seperti dpkg dan apt, untuk mengelola paket tersebut. Berkas control penting karena mendefinisikan berbagai aspek dari paket Debian, termasuk informasi paket, dependensi, deskripsi, dan pengaturan lainnya.

## Isi dari berkas control:

-  `Package` – nama program.
-  `Version` – versi program.
-  `Architecture` – target arsitektur
-  `Maintainer` – Nama dan alamat email dari pemelihara paket. Ini adalah orang atau tim yang bertanggung jawab atas paket tersebut.
-  `Description` – Deskripsi singkat dan panjang tentang paket.

## Contoh

```sh
Package: hello
Version: 1.0
Architecture: arm64
Maintainer: Internal Pointers <info@internalpointers.com>
Description: A program that greets you.
 You can add a longer description here. Mind the space at the beginning of this paragraph.
```

Berkas `control` adalah salah satu komponen yang sangat penting dalam pembuatan paket Debian, karena membantu sistem manajemen paket Debian memahami bagaimana paket tersebut harus diinstal, dihapus, dan dikonfigurasi. Berkas ini harus disiapkan dengan hati-hati sesuai dengan persyaratan paket yang akan Anda buat atau kelola.