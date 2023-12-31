# Membangun Project

Sesuaikan file POM pada project sebelumnya menjadi seperti berikut:
```xml
    <project xmlns="http://maven.apache.org/POM/4.0.0"      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.company.ianation</groupId>
    <artifactId>my-maven-project</artifactId>
    <!-- <packaging>jar</packaging> -->
    <version>1.0</version>
    <properties>
        <maven.compiler.source>11</maven.compiler.source>
        <maven.compiler.target>11</maven.compiler.target>
    </properties>
    <name>my-maven-project</name>
    <url>http://maven.apache.org</url>
    <dependencies>
        <dependency>
        <groupId>junit</groupId>
        <artifactId>junit</artifactId>
        <version>3.8.1</version>
        <scope>test</scope>
        </dependency>
    </dependencies>
    </project>
```

Jalankan dengan perintah:
```
mvn clean package
```

Hasil output:
![](https://iili.io/J90ePO7.png)

Menjalankan file jar yang telah digenerate:
![](https://iili.io/J90k1m7.png)

## Adding Java Source Files

```java
package com.companyname.bank;

public class Util {
   public static void printMessage(String message){
      System.out.println(message);
   }
}
```

Update App.class untuk menggunakan kelas Util:
```java
package com.companyname.bank;

/**
* Hello world!
*
*/

public class App {
   public static void main( String[] args ){
      Util.printMessage("Hello World!");
   }
}
```

Compile ulang menggunakan perintah:
```sh
mvn clean compile
```