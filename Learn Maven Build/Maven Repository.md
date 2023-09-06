# Apa itu Maven Repository

Maven repository adalah tempat penyimpanan berkas (artefak) yang digunakan oleh Apache Maven, alat manajemen proyek dan build untuk bahasa pemrograman Java. Maven repository berfungsi sebagai gudang pusat yang menyimpan berbagai dependensi, seperti perpustakaan (library), plug-in, dan proyek-proyek yang telah dibuild sebelumnya.

![](https://www.tutorialspoint.com/maven/images/repository_structure.jpg)

Ada tiga tipe maven repository:
1. Local Repository

    Ini adalah salinan lokal dari berkas-berkas yang diunduh dari remote repository. Local repository terletak di komputer pengembang dan digunakan untuk menyimpan dependensi yang telah diunduh sebelumnya. Saat Anda memulai proyek Maven, Maven akan mencoba mencari dependensi di local repository sebelum mencoba mengunduh dari remote repository, sehingga mempercepat proses build proyek.

    Secara default lokal repository Maven dibuat di `%USER_HOME%`. Untuk mengganti lokasi default, ubah path di Maven settings.xml, file tersebut tersedia di direktori %M2_HOME%\conf.

    ```xml
    <settings xmlns = "http://maven.apache.org/SETTINGS/1.0.0"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/SETTINGS/1.0.0 
   http://maven.apache.org/xsd/settings-1.0.0.xsd">
   <localRepository>C:/MyLocalRepository</localRepository>
    </settings>
    ```

2. Remote Repository

    Ini adalah tempat penyimpanan berkas-berkas yang bersifat publik dan dapat diakses oleh pengembang dari berbagai tempat. Remote repository ini digunakan untuk menyimpan berbagai dependensi yang bisa digunakan oleh pengembang dalam proyek mereka. Ada beberapa remote repository yang populer, seperti Maven Central Repository, JCenter, dan lainnya.

    Contoh file POM.xml yang akan mengunduh depedensi (yang tidak tersedia di repositori sentral) dari remote repositori:

    ```xml
    <project xmlns = "http://maven.apache.org/POM/4.0.0"
        xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
        http://maven.apache.org/xsd/maven-4.0.0.xsd">
        <modelVersion>4.0.0</modelVersion>
        <groupId>com.companyname.projectgroup</groupId>
        <artifactId>project</artifactId>
        <version>1.0</version>
        <dependencies>
            <dependency>
                <groupId>com.companyname.common-lib</groupId>
                <artifactId>common-lib</artifactId>
                <version>1.0.0</version>
            </dependency>
        <dependencies>
        <repositories>
            <repository>
                <id>companyname.lib1</id>
                <url>http://download.companyname.org/maven2/lib1</url>
            </repository>
            <repository>
                <id>companyname.lib2</id>
                <url>http://download.companyname.org/maven2/lib2</url>
            </repository>
        </repositories>
    </project>
    ```

3. Central Repository

    Maven Central Repository adalah sumber daya terpercaya untuk mendapatkan dependensi yang banyak digunakan dalam proyek-proyek Java. Ketika Anda mendefinisikan dependensi dalam berkas konfigurasi proyek Maven Anda, Maven akan mencari dependensi tersebut di Maven Central Repository, dan jika ditemukan, Maven akan mengunduhnya dari sana ke local repository Anda.