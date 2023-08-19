# Install Hadoop di Ubuntu 22.04

#### By _Ian Madiana_
## Langkah 1 - Membuat user untuk environment Hadoop
Buat user baru untuk mengelola Hadoop:
```sh
sudo adduser hadoop
```
Perintah di atas digunakan untuk membuat pengguna baru dengan nama "hadoop" pada sistem Linux dengan izin superuser (root).
## Langkah 2 - Instal Java
Hadoop dibuat dengan bahasa Java, dan layanannya memerlukan Java Runtime Environment (JRE) serta Java Development Kit (JDK) yang kompatibel.

Gunakan perintah berikut untuk memasang Java 1.8:
```sh
sudo apt update
```

```sh
sudo apt install openjdk-8-jdk -y
```
Cek versi java yang terinstal:
```sh
java -version
```
![Java version](images/java-version.png)
## Langkah 3 - Instal OpenSSH
Instal server dan klien OpenSSH dengan perintah berikut:
```sh
sudo apt install openssh-server openssh-client -y
```
Ganti ke user hadoop:
```sh
sudo su - hadoop
```
![Java version](images/switch%20user.png)
Generate public dan private key:
```sh
ssh-keygen -t rsa
```
Tambahkan public key yang telah ter-generate dari `id_rsa.pub` ke `authorized_keys`:
```sh
sudo cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
```
Ganti permission `authorized_keys`:
```sh
sudo chmod 640 ~/.ssh/authorized_keys
```
>Izin tersebut hanya pemilik file yang dapat membaca dan menulis ke file tersebut, sementara grup pengguna hanya dapat membaca, dan pengguna lain di luar pemilik dan grup tidak memiliki hak akses apa pun.

Verifikasi SSH:
```sh
ssh localhost
```
## Langkah 4 - Instal Apache Hadoop
Alamat download Apache Hadoop [Official download page](https://downloads.apache.org/hadoop/common/stable/).
Download versi terbaru Apache Hadoop:
```sh
wget https://downloads.apache.org/hadoop/common/stable/hadoop-3.3.6.tar.gz
```
Ekstrak file hadoop:
```sh
tar -xvzf hadoop-3.3.6.tar.gz
```
> sesuaikan dengan versi hadoop yang didownload

Ubah nama folder hasil ekstrak:
```sh
mv hadoop-3.3.0 hadoop
```
Cek lokasi “JAVA_HOME”  dengan perintah:
```sh
which java
```
![Java version](images/which%20java.png)
Konfigurasi environment java:
```sh
dirname $(dirname $(readlink -f $(which java)))
```
## Langkah 5 - Konfigurasi Hadoop
- ### Langkah 5.a - Konfigurasi Hadoop Environment Variables (bashrc)
    Edit file `~/.bashrc`:
    ```sh
    sudo nano ~/.bashrc
    ```
    Tambahkan kode berikut di dalam file `.bashrc`:
    ```sh
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    export HADOOP_HOME=/usr/local/hadoop
    export HADOOP_INSTALL=$HADOOP_HOME
    export HADOOP_MAPRED_HOME=$HADOOP_HOME
    export HADOOP_COMMON_HOME=$HADOOP_HOME
    export HADOOP_HDFS_HOME=$HADOOP_HOME
    export YARN_HOME=$HADOOP_HOME
    export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
    export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
    export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
    ```
    ![Java version](images/edit%20bashrc.png)
    Muat ulang file konfigurasi:
    ```sh
    source ~/.bashrc
    ```
    ![Java version](images/reload%20bashrc.png)
- ### Langkah 5.b - Edit file hadoop-env.sh
    File hadoop-env.sh berfungsi sebagai file master untuk mengonfigurasi  YARN, HDFS, MapReduce, dan Hadoop.

    Saat menyiapkan cluster Hadoop single node , perlu menentukan implementasi Java mana yang akan digunakan. Gunakan variabel `$HADOOP_HOME` yang dibuat sebelumnya untuk mengakses file hadoop-env.sh:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/hadoop-env.sh
    ```
    Uncomment variabel `$JAVA_HOME` dan tambahkan kode berikut:
    ```sh
    export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
    ```
- ### Langkah 5.c - edit file core-site.xml
    File core-site.xml mendefinisikan HDFS dan properti Hadoop core. Buka file core-site.xml:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/core-site.xml
    ```
    Tambahkan konfigurasi berikut untuk mengganti nilai default untuk direktori sementara dan tambahkan URL HDFS untuk mengganti pengaturan sistem file lokal default:
    ```sh
    <configuration>
        <property>
            <name>fs.defaultFS</name>
                <value>hdfs://localhost:9000</value>
         </property>
    </configuration>
    ```
    ![Java version](images/edit%20core-site.png)
- ### Langkah 5.d - edit file hdfs-site.xml
    Properti dalam file hdfs-site.xml mengatur lokasi untuk menyimpan metadata node, file fsimage, dan mengedit file log. Nilai default dfs.replication dari 3 perlu diubah menjadi 1 agar sesuai dengan penyiapan single node.
    
    Gunakan perintah berikut untuk mengedit hdfs-site.xml:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/hdfs-site.xml
    ```
    
    Tambahkan konfigurasi berikut ke dalam file:
    ```sh
    <configuration>
        <property>
                <name>dfs.replication</name>
                <value>1</value>
        </property>
        <property>
                <name>dfs.name.dir</name>
                <value>file:///home/hadoop/hadoopdata/hdfs/namenode</value>
        </property>
        <property>
                <name>dfs.data.dir</name>
                <value>file:///home/hadoop/hadoopdata/hdfs/datanode</value>
        </property>
    </configuration>
    ```
    ![Java version](images/Edit%20hdfs-site.png)
- ### Langkah 5.e - edit file mapred-site.xml
    Gunakan perintah berikut untuk mengedit mapred-site.xml:
    ```sh
    sudo nano $HADOOP_HOME/etc/hadoop/mapred-site.xml
    ```
    Tambahkan konfigurasi berikut untuk mengubah nama default MapReduce ke `yarn`:
    ```sh
    <configuration> 
        <property> 
            <name>mapreduce.framework.name</name> 
            <value>yarn</value> 
        </property> 
    </configuration>
    ```
    ![Java version](images/edit%20mapred.png)
- ### Langkah 5.f - edit file yarn-site.xml
    File yarn-site.xml digunakan untuk menentukan pengaturan yang berkaitan dengan YARN. File Ini berisi konfigurasi untuk Node Manager, Resource Manager, Containers, dan Application Master.
    ```
    sudo nano $HADOOP_HOME/etc/hadoop/yarn-site.xml
    ```
    Tambahkan kode berikut ke dalam file:
    ```
    <configuration>
        <property>
                <name>yarn.nodemanager.aux-services</name>
                <value>mapreduce_shuffle</value>
        </property>
    </configuration>
    ```
    ![Java version](images/Edit%20yarn-site.png)
- ### Langkah 5.g - Format HDFS NameNode
    Lakukan format NameNode sebelum menjadlankan servis Hadoop pertama kali:
    ```sh
    hdfs namenode -format
    ```
    ![Java version](images/namenode%20format.png)
## Langkah 6 - Start Hadoop Cluster
Start NameNode dan DataNode:
```sh
start-dfs.sh
```
![Java version](images/start-dfs.png)
Start Yarn dan node manager:
```sh
start-yarn.sh
```
![Java version](images/start-yarn.png)
Verifikasi komponen yang sedang berjalan:
```sh
jps
```
![Java version](images/jps.png)
## Langkah 7 - Akses UI Hadoop dari browser:
Akses UI Hadoop NameNode:
```sh
http://localhost:9870
```
![Java version](images/NameNode.png)
Akses ke DataNode:
```sh
http://localhost:9864
```
![Java version](images/DataNodes.png)
Akses YARN Resource Manager:
```sh
http://localhost:8088
```
![Java version](images/YARN%20Resource%20Manager.png)