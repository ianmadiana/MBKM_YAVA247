# Maven Snapshot

Maven Snapshot adalah mekanisme yang digunakan untuk menandai versi perkembangan dari proyek perangkat lunak. Ini tidak seperti versi yang release (release version), yang bersifat statis dan dianggap sebagai versi yang stabil dari proyek. Snapshots adalah versi yang sedang dalam pengembangan aktif.

**Penamaan Snapshot:**

Versi Snapshot biasanya ditandai dengan kata "SNAPSHOT" yang ditambahkan ke nomor versi. Misalnya, jika versi proyek adalah 1.0-SNAPSHOT, ini menunjukkan bahwa itu adalah versi Snapshot dari proyek dengan nomor versi 1.0.

**Tujuan Snapshot:**

Snapshots digunakan untuk mengelola proyek yang masih dalam pengembangan aktif. Mereka memungkinkan pengembang untuk secara dinamis mengambil perubahan terbaru dari proyek tanpa harus menentukan versi yang spesifik. Ini berguna ketika beberapa tim atau pengembang berkontribusi pada proyek yang sama, dan perubahan terus-menerus terjadi.

**Repository Snapshot:**

Snapshots disimpan dalam repositori Snapshot yang biasanya berada di repositori remote seperti Nexus atau Artifactory. Ini memungkinkan berbagai pengembang dan tim untuk berbagi versi terbaru dari proyek yang sedang dalam pengembangan.

**app-ui pom.xml**

```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>app-ui</groupId>
   <artifactId>app-ui</artifactId>
   <version>1.0</version>
   <packaging>jar</packaging>
   <name>health</name>
   <url>http://maven.apache.org</url>
   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
   </properties>
   <dependencies>
      <dependency>
      <groupId>data-service</groupId>
         <artifactId>data-service</artifactId>
         <version>1.0-SNAPSHOT</version>
         <scope>test</scope>
      </dependency>
   </dependencies>
</project>
```

**data-service pom.xml**

```xml
<project xmlns = "http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>data-service</groupId>
   <artifactId>data-service</artifactId>
   <version>1.0-SNAPSHOT</version>
   <packaging>jar</packaging>
   <name>health</name>
   <url>http://maven.apache.org</url>
   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
   </properties>
</project>
```