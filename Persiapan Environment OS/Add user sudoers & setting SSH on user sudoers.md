# Menambahkan user sudoers

## Add user `orion`
Gunakan perintah berikut untuk menambahkan user baru di linux:
```ssh
sudo adduser orion
```
Untuk pindah user gunakan perintah:
```ssh
sudo su - orion
```
Menambahkan user ke "sudo" group:
```sh
sudo usermod -aG sudo orion
```
Untuk menampilkan pengguna saat ini, gunakan perintah:
```ssh
whoami
```
![add user](https://iili.io/Hbfe64R.png)
Untuk melihat user yang berada di group sudo:
```ssh
getent group sudo
```
![group sudo](https://iili.io/HmAmTdb.png)


# Setting SSH Access Remote di User Sudoers

Ganti ke user yang akan ditambahkan ssh:
```ssh
sudo su - <username>
```

Buat ssh key dengan perintah:
```ssh
ssh-keygen -t rsa
```

Salin public key:
```sh
ssh-copy-id orion@192.168.1.42
```

Atur file sshd_config agar opsi aunthetication diaktifkan:
```ssh
sudo nano /etc/ssh/sshd_config
```
![edit sshd_config](https://iili.io/Hbqnwzv.png)