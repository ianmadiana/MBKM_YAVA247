# Manage Dependencies

Manajemen dependensi (dependency management) adalah praktik yang digunakan dalam pengembangan perangkat lunak untuk mengatur, mengelola, dan mengintegrasikan berbagai komponen perangkat lunak yang digunakan dalam suatu proyek. Komponen perangkat lunak ini bisa berupa pustaka (library), framework, atau modul yang diperlukan untuk membangun aplikasi atau proyek perangkat lunak tertentu.

Manajemen dependensi sangat penting dalam proyek perangkat lunak modern karena proyek sering kali mengandalkan berbagai pustaka pihak ketiga dan komponen lainnya untuk mempercepat pengembangan dan menghindari menulis kode dari awal untuk setiap aspek proyek. Berikut beberapa konsep dan aspek terkait manajemen dependensi:

1. **Manajer Dependensi (Dependency Manager)**: Biasanya, manajer dependensi seperti Apache Maven, Gradle, atau npm untuk JavaScript, digunakan dalam pengelolaan dependensi proyek. Manajer dependensi ini memungkinkan pengembang untuk mendefinisikan, mengelola, dan mengunduh dependensi dengan mudah.
2. **File Konfigurasi (Configuration File)**: Dalam banyak kasus, dependensi dan versi yang digunakan dalam proyek dijelaskan dalam file konfigurasi khusus. Misalnya, dalam Maven, file pom.xml digunakan untuk menentukan dependensi dan versinya.
3. **Repositori Dependensi (Dependency Repository)**: Dependensi biasanya diambil dari repositori dependensi, yang dapat menjadi repositori lokal (di komputer pengembang), repositori jarak-jauh (remote repository), atau repositori internal perusahaan. Repositori ini berisi berbagai pustaka dan komponen yang dapat digunakan oleh proyek.
4. **Transitif Dependensi (Transitive Dependency)**: Saat sebuah proyek menggunakan dependensi A, yang pada gilirannya bergantung pada dependensi B, maka proyek juga secara otomatis akan memiliki dependensi B. Hal ini dikenal sebagai transitif dependensi.
5. **Manajemen Versi (Version Management)**: Manajemen dependensi juga melibatkan pengelolaan versi dari dependensi. Ini mencakup pengaturan versi yang kompatibel dan menangani masalah konflik versi.
6. **Resolusi Dependensi (Dependency Resolution)**: Manajer dependensi akan melakukan resolusi dependensi untuk memastikan bahwa semua dependensi dan versi yang diperlukan untuk proyek tersedia dan cocok.
7. **Siklus Hidup Dependensi (Dependency Lifecycle)**: Dependensi dapat memiliki siklus hidupnya sendiri, dengan pembaruan dan rilis baru secara berkala. Manajemen dependensi harus memastikan proyek selalu menggunakan versi yang sesuai.
8. **Pengujian dan Integrasi Dependensi**: Terkadang, dependensi perlu diuji dan diintegrasikan dengan proyek untuk memastikan bahwa semuanya berfungsi sebagaimana mestinya.
9. **Keamanan Dependensi**: Manajemen dependensi juga dapat melibatkan penilaian risiko keamanan dari dependensi yang digunakan, dan tindakan yang diperlukan untuk mengatasi masalah keamanan.

![](https://www.tutorialspoint.com/maven/images/dependency_graph.jpg)

- App-UI-WAR bergantung pada App-Core-lib dan App-Data-lib.
- Root adalah parent dari App-Core-lib dan App-Data-lib.
- Root defines Lib1, lib2, Lib3 as dependencies in its dependency section.

**App-UI-WAR**
```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.groupname</groupId>
   <artifactId>App-UI-WAR</artifactId>
   <version>1.0</version>
   <packaging>war</packaging>
   <dependencies>
      <dependency>
         <groupId>com.companyname.groupname</groupId>
         <artifactId>App-Core-lib</artifactId>
         <version>1.0</version>
      </dependency>
   </dependencies>  
   <dependencies>
      <dependency>
         <groupId>com.companyname.groupname</groupId>
         <artifactId>App-Data-lib</artifactId>
         <version>1.0</version>
      </dependency>
   </dependencies>  
</project>
```

**App-Core-lib**
```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <parent>
      <artifactId>Root</artifactId>
      <groupId>com.companyname.groupname</groupId>
      <version>1.0</version>
   </parent>
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.groupname</groupId>
   <artifactId>App-Core-lib</artifactId>
   <version>1.0</version> 
   <packaging>jar</packaging>
</project>
```

**App-Data-lib**
```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <parent>
      <artifactId>Root</artifactId>
      <groupId>com.companyname.groupname</groupId>
      <version>1.0</version>
   </parent>
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.groupname</groupId>
   <artifactId>App-Data-lib</artifactId>
   <version>1.0</version>   
   <packaging>jar</packaging>
</project>
```

**Root**
```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0"
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.groupname</groupId>
   <artifactId>Root</artifactId>
   <version>1.0</version>
   <packaging>pom</packaging>
   <dependencies>
      <dependency>
         <groupId>com.companyname.groupname1</groupId>
         <artifactId>Lib1</artifactId>
         <version>1.0</version>
      </dependency>
   </dependencies>  
   <dependencies>
      <dependency>
         <groupId>com.companyname.groupname2</groupId>
         <artifactId>Lib2</artifactId>
         <version>2.1</version>
      </dependency>
   </dependencies>  
   <dependencies>
      <dependency>
         <groupId>com.companyname.groupname3</groupId>
         <artifactId>Lib3</artifactId>
         <version>1.1</version>
      </dependency>
   </dependencies>  
</project>
```

From above example, we can learn the following key concepts:
- Common dependencies can be placed at single place using concept of parent pom. Dependencies of App-Data-lib and App-Core-lib project are listed in Root project.
- There is no need to specify Lib1, lib2, Lib3 as dependency in App-UI-WAR. Maven use the Transitive Dependency Mechanism to manage such detail.