# Setting SSH Access Remote di User Sudoers

Ganti ke user yang akan ditambahkan ssh:
```ssh
sudo su - <username>
```

Buat ssh key dengan perintah:
```ssh
ssh-keygen -t rsa
```

Salin public key yang telah dibuat:
```ssh
sudo cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
```

Atur permission authorized_key:
```ssh
sudo chmod 640 ~/.ssh/authorized_keys
```

Atur file sshd_config agar opsi aunthetication diaktifkan:
```ssh
sudo nano /etc/ssh/sshd_config
```
![edit sshd_config](https://iili.io/Hbqnwzv.png)

Verifikasi passwordless ssh:
```ssh
ssh orion@192.168.1.42
```
![test ssh](https://iili.io/HbqnhmJ.png)

```ssh
ssh orion@yubuntu01.labs247.com
```
![test ssh](https://iili.io/HbqnNXR.png)