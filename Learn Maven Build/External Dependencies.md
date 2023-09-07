# Depedensi Eksternal Maven

Maven adalah alat manajemen proyek yang digunakan untuk mengelola proyek perangkat lunak Java dan proyek-proyek berbasis JVM lainnya. Ini memiliki mekanisme yang kuat untuk mengelola dependensi proyek, termasuk dependensi eksternal. Dependensi eksternal adalah perangkat lunak atau pustaka yang dibutuhkan oleh proyek Anda, tetapi tidak dikembangkan dalam proyek tersebut. Maven memungkinkan Anda untuk mendefinisikan, mengelola, dan mengunduh dependensi eksternal ini.

Tambahkan folder `lib` untuk menambahkan library untuk menampung depedensi eksternal:

![](https://www.tutorialspoint.com/maven/images/external-project-structure.jpg)

Contoh menambahkan depedensi eksternal pada file POM:
```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/maven-v4_0_0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.bank</groupId>
   <artifactId>consumerBanking</artifactId>
   <packaging>jar</packaging>
   <version>1.0-SNAPSHOT</version>
   <name>consumerBanking</name>
   <url>http://maven.apache.org</url>

   <dependencies>
      <dependency>
         <groupId>junit</groupId>
         <artifactId>junit</artifactId>
         <version>3.8.1</version>
         <scope>test</scope>
      </dependency>

      <!-- Ini adalah depedensi eksternal -->
      <dependency>
         <groupId>ldapjdk</groupId>
         <artifactId>ldapjdk</artifactId>
         <scope>system</scope>
         <version>1.0</version>
         <systemPath>${basedir}\src\lib\ldapjdk.jar</systemPath>
      </dependency>
   </dependencies>

</project>
```