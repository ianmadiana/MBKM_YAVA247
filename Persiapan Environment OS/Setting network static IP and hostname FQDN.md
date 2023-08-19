# Setting network static IP

# Setting hostname FQDN
## Atur hostname menjadi `yubuntu01.labs247.com`

Edit hostname dengan menggunakan perintah:
```ssh
sudo nano /etc/hostname
```
![Edit hostname](https://iili.io/HbfkKu9.png)
![Setting hostname](https://iili.io/HbfeDjn.png)

Edit hosts dengan menggunakan perintah:
```ssh
sudo nano /etc/hosts
```
![Edit hosts](https://iili.io/HbfkqZu.png)
![Setting hosts](https://iili.io/HbfebQs.png)

Menampilkan nama host lengkap (FQDN):
```ssh
hostname -f
```
![cek fqdn](https://iili.io/HbfepCG.png)