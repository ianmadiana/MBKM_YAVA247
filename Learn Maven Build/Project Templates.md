# Project Templates di Maven

"Project Templates" adalah kumpulan aturan, konfigurasi, dan konvensi yang digunakan untuk membuat dan mengelola proyek perangkat lunak. Maven adalah alat manajemen proyek yang sering digunakan dalam pengembangan perangkat lunak Java, dan proyek-proyek Maven dapat dibuat dengan cepat dengan menggunakan Project Templates.

Project Templates di Maven biasanya berisi informasi tentang struktur direktori proyek, konfigurasi plugin, dependensi, dan pengaturan lain yang diperlukan untuk memulai proyek perangkat lunak. Ini membantu menghemat waktu dan usaha dalam menyiapkan proyek, karena Anda dapat menghindari menuliskan konfigurasi yang sama berulang-ulang untuk setiap proyek yang Anda buat.

Perintah untuk menggunakan project template:
```sh
mvn archetype:generate
```


- Ada banyak template yang dapat dipilih sesuai kebutuhan, berikut ini adalah contoh beberapa archetype yang sering digunakan

    | Archetype ArtifactIds          | Deskripsi                                                                                           |
    | ------------------------------ | --------------------------------------------------------------------------------------------------- |
    | maven-archetype-quickstart     | Project Maven sederhana dengan struktur dasar. Cocok untuk project-project kecil atau sebagai awal untuk project yang lebih besar.                  |
    | maven-archetype-webapp         | Project web dengan struktur direktori standar seperti WAR (Web Application Archive). Cocok untuk pengembangan aplikasi web.                          |
    | maven-archetype-jar            | Project JAR (Java Archive) yang berisi kode Java yang dapat digunakan sebagai dependensi oleh project lain.                                    |
    | maven-archetype-ear            | Project EAR (Enterprise Archive) yang berisi aplikasi J2EE yang kompleks, seperti EJB (Enterprise JavaBeans) dan aplikasi web.                  |
    | maven-archetype-plugin         | Project Maven Plugin. Cocok jika ingin mengembangkan plugin kustom untuk Maven.                                                     |
    | maven-archetype-site-simple    | Project Situs dokumentasi sederhana. Berguna untuk menyediakan dokumentasi project.                                               |
    | maven-archetype-remote-resources | Project yang mengelola sumber daya (resources) jarak jauh dalam repositori Maven. Berguna jika ingin berbagi atau mengelola sumber daya secara terpusat. |
    | maven-archetype-assembly       | Project yang menghasilkan distribusi project yang dapat dijalankan (seperti ZIP atau tarball) dengan berbagai konfigurasi.                       |                                          
  