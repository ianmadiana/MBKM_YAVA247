# Menambahkan user sudoers

## Add user `orion`
Gunakan perintah berikut untuk menambahkan user baru di linux:
```ssh
sudo adduser <namauser>
```
Untuk pindah user gunakan perintah:
```ssh
sudo su - <namauser>
```
Untuk menampilkan pengguna saat ini, gunakan perintah:
```ssh
whoami
```
![add user](https://iili.io/Hbfe64R.png)

# Setting SSH Access Remote di User Sudoers

Ganti ke user yang akan ditambahkan ssh:
```ssh
sudo su - <username>
```

Buat ssh key dengan perintah:
```ssh
ssh-keygen -t rsa
```

Atur file sshd_config agar opsi aunthetication diaktifkan:
```ssh
sudo nano /etc/ssh/sshd_config
```
![edit sshd_config](https://iili.io/Hbqnwzv.png)

remote malalui ssh:
```
ssh orion@192.168.1.42
```
![test ssh](https://iili.io/Hm2ecSj.png)
```ssh
ssh orion@yubuntu01.labs247.com
```
![test ssh](https://iili.io/HbqnNXR.png)