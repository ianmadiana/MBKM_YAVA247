# Install maven and check version (3.6.x) on user sudoers

Update sistem:
```ssh
sudo apt update
```
Download file maven 3.6.x:
```ssh
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
```

Ekstrak file maven:
```ssh
tar -xvf apache-maven-3.6.3-bin.tar.gz
```

Pindahkan folder hasil ekstrak:
```ssh
mv apache-maven-3.6.3 /opt/
```

Atur M2_HOME dan variabel
```ssh
sudo nano ~/.profile
```
![edit .profile](https://iili.io/HbqAVGj.png)

Cek versi maven:
```ssh
mvn -version
```
![maven version](https://iili.io/HbqAMCb.png)