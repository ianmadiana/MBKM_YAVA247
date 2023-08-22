# Linux File Hierarchy
FHS atau Filesystem Hierarchy Standard adalah standar yang menjelaskan struktur dan hierarki direktori dalam sistem operasi Unix dan mirip Unix, seperti Linux. FHS mendefinisikan tempat yang tepat di mana berkas, direktori, dan file sistem lainnya seharusnya berada dalam sistem operasi tersebut, serta apa yang seharusnya terdapat dalam setiap direktori.

Tujuan utama dari FHS adalah untuk menciptakan konsistensi dalam penyusunan struktur direktori di seluruh sistem operasi Unix-like. Ini membantu para pengembang dan pengguna untuk lebih mudah memahami di mana mereka dapat menemukan berkas dan bagaimana sistem berkas tersebut diatur. Dengan adanya FHS, pengguna dan pengembang dapat memiliki panduan yang jelas dalam hal penyimpanan berkas, konfigurasi, data pengguna, dan lain-lain.

Versi FHS yang terbaru menggambarkan struktur yang seharusnya ada dalam sistem operasi Unix-like, termasuk letak berkas konfigurasi, berkas biner, direktori pengguna, dan banyak lagi. Meskipun setiap distribusi Linux memiliki kebebasan untuk beradaptasi dengan kebijakan mereka sendiri, banyak distribusi mengikuti prinsip FHS untuk memastikan konsistensi dan kemudahan penggunaan.

### Jenis Direktori	| Jenis Berkas yang Disimpan
| Jenis Direktori            | Jenis Berkas yang Disimpan                                  |
|----------------------------|------------------------------------------------------------|
| Biner                      | Berisi berkas kode biner atau sumber yang telah dikompilasi, misalnya `/bin`, `/sbin`, dll.          |
| Konfigurasi                | Berisi berkas konfigurasi sistem, misalnya `/etc`, `/boot`.                                    |
| Data                       | Menyimpan berkas data, misalnya `/home`, `/root`, dll.                                         |
| Memori                     | Menyimpan berkas perangkat yang tidak memerlukan ruang hard disk fisik, misalnya `/dev`, `/proc`, `/sys`. |
| Usr (Unix System Resources)| Berisi data yang dapat dibagikan dan hanya dibaca, misalnya `/usr/bin`, `/usr/lib`, dll.          |
| var (direktori variabel)   | Berisi data berukuran lebih besar, misalnya `/var/log`, `/var/cache`, dll.                       |
| Direktori Non-standar      | Direktori yang tidak termasuk dalam standar FHS, misalnya `lost+found`, `/run`, dll.                |

## Linux Binary Directory
| Direktori Biner       | Keterangan                                                                                              |
|-----------------------|--------------------------------------------------------------------------------------------------------|
| /bin                  | Berisi berkas biner (eksekusi) utama yang diperlukan untuk booting dan pemeliharaan awal sistem.      |
| /sbin                 | Mirip dengan `/bin`, tetapi berisi perintah yang hanya diperuntukkan bagi administrator sistem.      |
| /usr/bin              | Mengandung berkas biner umum yang digunakan oleh pengguna dan aplikasi dalam mode multi-pengguna.    |
| /usr/sbin             | Sama seperti `/usr/bin`, tetapi berisi berkas biner yang hanya ditujukan untuk administrator.       |
| /opt                  | Direktori opsional untuk instalasi paket perangkat lunak pihak ketiga.                              |
| /usr/local/bin        | Direktori untuk berkas biner yang terkait dengan instalasi lokal oleh administrator sistem.          |
| /usr/local/sbin       | Sama seperti `/usr/local/bin`, tetapi untuk berkas biner yang ditujukan untuk administrator.         |

## Linux Configuration Directory
| Direktori Konfigurasi     | Deskripsi                                                                                           |
|--------------------------|-----------------------------------------------------------------------------------------------------|
| /etc                     | Direktori utama untuk berkas konfigurasi sistem. Berisi konfigurasi global untuk berbagai layanan, program, dan komponen sistem. |
| /boot                    | Berisi berkas konfigurasi boot loader dan konfigurasi awal booting.                                 |
| /usr/share               | Berisi data konfigurasi yang dapat dibagikan dan hanya dibaca, seperti data lokal dan global untuk program. |
| /usr/local/etc           | Digunakan untuk berkas konfigurasi lokal untuk perangkat lunak yang diinstal secara lokal di /usr/local. |
| /home/username/.config  | Direktori pribadi pengguna yang berisi berkas konfigurasi spesifik untuk setiap aplikasi atau layanan. |

## Linux Data directory
| Nama Direktori | Deskripsi                                            |
|----------------|------------------------------------------------------|
| /bin           | Berisi program biner yang penting untuk sistem.     |
| /etc           | Berisi berkas konfigurasi sistem.                    |
| /home          | Direktori utama bagi pengguna.                       |
| /root          | Direktori utama bagi pengguna root.                  |
| /srv           | Berisi data yang disediakan oleh berbagai layanan.   |
| /tmp           | Digunakan untuk menyimpan berkas sementara.          |

## Linux Memory Directory
| Direktori Memori | Penjelasan                                                                           |
|------------------|--------------------------------------------------------------------------------------|
| `/dev`           | Berisi berkas perangkat (device files) yang merepresentasikan perangkat keras.      |
| `/proc`          | Menyediakan akses ke informasi tentang proses yang sedang berjalan dalam sistem.    |
| `/sys`           | Mirip dengan `/proc`, tetapi memberikan akses ke informasi tentang perangkat keras. |
| `/run`           | Berisi data runtime yang diperlukan oleh sistem saat startup dan berjalan.          |
| `/tmp`           | Direktori temporer yang digunakan untuk menyimpan berkas sementara.                 |

## Unix System Resources (/usr)
| Nama Direktori  | Deskripsi                                       |
|-----------------|-------------------------------------------------|
| /usr            | Direktori yang berisi sumber daya sistem Unix   |
|                 | yang dapat dibagikan dan hanya dibaca.          |
| /usr/bin        | Berisi berkas biner eksekusi umum.             |
| /usr/lib        | Berisi pustaka (libraries) yang dibutuhkan     |
|                 | oleh program-program dalam /usr/bin.           |
| /usr/include    | Berisi berkas header yang diperlukan           |
|                 | untuk pengembangan perangkat lunak.             |
| /usr/share      | Berisi berkas bersama yang digunakan           |
|                 | oleh banyak aplikasi.                         |
| /usr/local      | Direktori tambahan untuk perangkat lunak       |
|                 | lokal yang tidak berasal dari distribusi      |
|                 | resmi.                                       |
| /usr/sbin       | Berisi utilitas sistem yang hanya             |
|                 | seharusnya dijalankan oleh administrator.     |

## Direktori Variabel (/var)
| Subdirektori   | Penggunaan                                           |
|----------------|------------------------------------------------------|
| /var/log       | Berisi berkas log sistem, termasuk catatan kejadian, kesalahan, dan informasi lainnya. |
| /var/cache     | Menyimpan data cache sementara yang digunakan oleh berbagai aplikasi.                |
| /var/spool     | Berisi antrian berkas untuk cetak (print), email, dan tugas lain yang akan diproses. |
| /var/lib       | Menyimpan data yang berubah secara dinamis yang diperlukan oleh aplikasi yang berjalan. |

## Non-standard Directories
| Nama Direktori        | Deskripsi                                                                                         |
|-----------------------|--------------------------------------------------------------------------------------------------|
| lost+found            | Direktori ini digunakan oleh sistem berkas (filesystem) untuk menyimpan berkas yang terfragmentasi atau rusak setelah pemulihan kesalahan. Ini terutama digunakan pada sistem berkas yang menggunakan jurnal (journaling filesystems).                           |
| /run                  | Direktori `/run` berisi data yang diperlukan oleh aplikasi saat booting. Ini adalah tempat untuk menyimpan berkas PID (Process ID) dan berkas lainnya yang dibutuhkan untuk menjalankan proses saat sistem dinyalakan.                    |
| /tmp                  | Direktori `/tmp` digunakan untuk menyimpan berkas sementara (temporary) yang dapat diakses oleh semua pengguna. Isi dari direktori ini dapat dihapus setiap kali sistem dinyalakan atau secara berkala. |
| /mnt                  | Direktori `/mnt` sering digunakan sebagai titik pemasangan sementara untuk mengaitkan atau me-mount perangkat atau berkas berkas dari perangkat eksternal atau jaringan.                  |
| /media                | Direktori `/media` serupa dengan `/mnt` dan digunakan sebagai tempat untuk me-mount perangkat penyimpanan eksternal seperti USB drive, CD/DVD drive, dan lain-lain.            |
| /srv                  | Direktori `/srv` digunakan untuk menyimpan data situs web atau data layanan lainnya yang disediakan oleh sistem.                                           |



