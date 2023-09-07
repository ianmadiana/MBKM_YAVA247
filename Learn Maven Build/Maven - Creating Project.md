# Membuat project dengan Maven

Maven adalah salah satu alat manajemen proyek yang paling umum digunakan dalam pengembangan perangkat lunak Java. Ini membantu dalam mengelola dependensi, membangun proyek, mengelola siklus hidup proyek, dan banyak lagi.

Gunakan perintah berikut untuk membuat projek pertama menggunakan maven:
```sh
mvn archetype:generate 
-DgroupId=com.company.ianation -DartifactId=my-maven-project -DarchetypeArtifactId=maven-archetype-quickstart 
-DinteractiveMode=false
```

## Strukutur direktori
```
my-maven-project 
├── src
│   ├── main
│   │   ├── java
│   │   │   └── com
│   │   │       └── example
│   │   │           └── App.java
│   │   └── resources
│   └── test
│       ├── java
│       │   └── com
│       │       └── example
│       │           └── AppTest.java
│       └── resources
├── pom.xml
└── README.md
```