# Maven Plugin

Maven plugins adalah komponen tambahan yang dapat digunakan dalam Apache Maven untuk melakukan berbagai tugas tambahan selama proses build dan manajemen proyek. Plugin-plugin ini memungkinkan Anda untuk mengeksekusi tugas-tugas khusus, seperti mengkompilasi kode, mengemas proyek menjadi berkas JAR atau WAR, menjalankan uji unit, dan banyak lagi. Plugin-plugin ini secara efektif memperluas kemampuan Maven di luar fungsionalitas bawaan, sehingga Anda dapat mengotomatisasi berbagai tugas dalam proyek Anda.

Maven plugin biasanya digunakan untuk:
- Membuat file jar
- Membuat file war
- Compile kode file
- Unit testing of code
- Membuat dokumentasi projek
- Membuat laporan projek

Di Apache Maven, terdapat dua tipe utama dari plugin: `plugin build (build plugins)` dan `plugin laporan (reporting plugins)`. Kedua jenis ini memiliki fungsi dan penggunaan yang berbeda dalam proses manajemen proyek Maven:

1. Plugin Build (Build Plugins):
    - Reporting Plugin Utama (Core Reporting Plugins):

        Plugin laporan digunakan untuk menghasilkan berbagai laporan dan dokumen dokumentasi yang terkait dengan proyek. Misalnya, Anda dapat menggunakan maven-site-plugin untuk menghasilkan situs web dokumentasi proyek. Plugin laporan utama termasuk maven-site-plugin, maven-project-info-reports-plugin, dan maven-changelog-plugin.

    - Plugin Laporan Eksperimental (Experimental Reporting Plugins):

        Sama seperti plugin eksperimental, beberapa plugin laporan juga dapat dianggap eksperimental dan tidak termasuk dalam inti Maven. Mereka digunakan untuk menghasilkan laporan-laporan tambahan yang mungkin dibutuhkan dalam proyek-proyek tertentu.
        
2. Plugin Laporan (Reporting Plugins):