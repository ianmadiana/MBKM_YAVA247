# Set JAVA_HOME default openjdk 1.8.0 on user sudoers

Cek lokasi java di sistem:
```ssh
dirname $(dirname $(readlink -f $(which java)))
```
![cek lokasi java](https://iili.io/HbqzR5X.png)

Atur environment di bashrc:
```ssh
sudo nano ~/.bashrc
```
![edit bashrc](https://iili.io/Hbqz5en.png)

Reload bashrc:
```ssh
source ~/.bashrc
```

Cek JAVA_HOME:
```ssh
echo $JAVA_HOME
```
![cek java_home](https://iili.io/HbqzAJt.png)