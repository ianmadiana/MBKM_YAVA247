# Maven POM

POM adalah singkatan dari `Project Object Model` merupakan file XML yang berisi informasi terkait proyek dengan informasi yang telah dikonfigurasi,seperti misalnya, dependensi, direktori sumber, plugin, dan tujuan. 

Sebelum membuat POM, pertama-tama harus membuat project group (groupId), namanya (artifactId), dan versinya yang atribut-atribut tersebut akan membantu mengidentifikasi repository project secara unik.

contoh POM:
```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>

   <groupId>com.companyname.project-group</groupId>
   <artifactId>project</artifactId>
   <version>1.0</version>
</project>
```
```sh
mvn archetype:generate -DgroupId=com.embeddednesia.java -DartifactId=java-project -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
```
Akan terbentuk folder `java-project`.
![]()
![]()
> hanya boleh terdapat satu file POM saja disetiap projek
> - Semua file POM membutuhkan elemen `project` dan wajib mempunyai tiga fields: `groupId`, `artifactId`, `version`.
> - Notasi projek di repository adalah `groupId:artifactId:version`.

 
| Sr.No. | Node & Description |
| ------- | ------- |
| 1 | **Project root**, <br> direktori utama atau root dari proyek tersebut. Ini adalah direktori tempat Anda akan menemukan file pom.xml, yang merupakan berkas konfigurasi utama untuk proyek Maven. |
| 2 | **Model version**, <br> versi dari model proyek Maven yang digunakan dalam file konfigurasi proyek Maven. Model ini digunakan untuk mendefinisikan struktur dan properti proyek, termasuk dependensi, konfigurasi build, repositori remote, dan banyak aspek lainnya yang terkait dengan proyek. |
| 3 | **groupId**, <br> adalah salah satu elemen yang digunakan untuk mengidentifikasi unik proyek atau artefak. groupId digunakan dalam koordinasi dependensi dan identifikasi proyek saat Anda membangun atau memanage proyek Anda menggunakan Maven. |
| 4 | **artifactId**, <br> Ini adalah nama unik untuk artefak (proyek atau dependensi). Ini adalah bagian yang paling sering digunakan untuk merujuk ke artefak tertentu. Biasanya, ini adalah nama proyek atau dependensi itu sendiri. |
| 5 | **version**, <br> adalah salah satu elemen yang digunakan untuk mengidentifikasi dan mengelola versi dari proyek perangkat lunak yang sedang Anda bangun. Elemen ini digunakan untuk menentukan nomor versi proyek Anda. <br> Contoh: <br> `com.company.bank:consumer-banking:1.0` <br> `com.company.bank:consumer-banking:1.1`   |

# Super POM

Super POM (Project Object Model) adalah file konfigurasi standar yang ada dalam setiap proyek Maven. Ini adalah POM default yang digunakan oleh Maven jika Anda tidak menyediakan POM sendiri untuk proyek Anda atau jika proyek Anda adalah turunan (inheritance) dari proyek Maven lainnya. Super POM menyediakan nilai default untuk berbagai konfigurasi yang diperlukan oleh Maven.

Super POM dapat dianggap sebagai "induk" dari semua proyek Maven. Ketika Anda membuat proyek Maven baru, POM proyek tersebut secara tidak langsung mewarisi konfigurasi dan plugin dari Super POM. Ini berarti Anda dapat menggunakan semua konfigurasi default yang telah ditetapkan oleh Maven dalam proyek Anda, dan Anda hanya perlu menentukan perubahan atau penyesuaian yang diperlukan.

Contoh beberapa konfigurasi default yang ditetapkan dalam Super POM adalah:
   
1. Versi default dari Maven.
2. Plugin yang digunakan secara default oleh Maven.
3. Pengaturan repository Maven Central sebagai repository default.
4. Konfigurasi untuk siklus hidup (lifecycle) build Maven.

Build Super POM menggunakan file POM di atas:

Build menggunakan perintah:
```sh
mvn help:effective-pom
```
![](https://iili.io/J9fQZV1.png)
![](https://iili.io/J9fQtiF.png)
