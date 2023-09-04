# Maven Lifecycle

Adalah serangkaian fase (lifecycle phases) yang mendefinisikan urutan tugas-tugas yang terjadi selama proses build dan manajemen proyek Maven. Siklus Hidup Maven adalah komponen kunci dalam Maven yang mengelola berbagai tahapan dalam pengembangan perangkat lunak, termasuk kompilasi, pengujian, packaging, instalasi, dan distribusi.

Ada tiga Siklus Hidup utama dalam Maven:

## 1. Clean Lifecycle:
Clean Lifecycle adalah tahap pertama dalam siklus hidup Maven. Ini terkait dengan tugas-tugas yang digunakan untuk membersihkan proyek dari hasil build sebelumnya. Tahapan dalam Clean Lifecycle termasuk menghapus direktori target yang berisi output dari build sebelumnya. Tujuannya adalah untuk memastikan bahwa proyek dibersihkan sebelum memulai build yang bersih.
> **clean**: Tujuannya untuk membersihkan proyek dari hasil build sebelumnya. Anda dapat menjalankannya dengan perintah `mvn clean`.
## 2. Default Lifecycle:
Siklus Hidup Default adalah tahap utama dalam siklus hidup Maven. Ini mengelola tugas-tugas yang berkaitan dengan kompilasi, pengujian, dan packaging proyek. Tahapan dalam Siklus Hidup Default termasuk:
- validate: Memvalidasi proyek, memeriksa semua dependensi.
- compile: Mengkompilasi kode sumber proyek.
- test: Menjalankan tes unit proyek.
- package: Mengambil hasil kompilasi dan mengemasnya dalam format yang sesuai (misalnya, JAR, WAR).
- verify: Memverifikasi integritas hasil build.
- install: Menginstal hasil build ke repositori lokal.
- deploy: Mengunggah hasil build ke repositori jarak jauh.
> Anda dapat menjalankan salah satu atau lebih dari tujuan ini dengan perintah `mvn <tujuan>`. Misalnya, untuk menjalankan compile, Anda dapat menggunakan perintah `mvn compile`.
## 3. Site Lifecycle:

Site lifecycle berkaitan dengan pembuatan dokumentasi proyek dan laporan. Tahapan dalam Siklus Hidup Situs termasuk:
 - site: Membangun dokumentasi proyek.
 - site-deploy: Mengunggah dokumentasi proyek ke repositori jarak jauh.
