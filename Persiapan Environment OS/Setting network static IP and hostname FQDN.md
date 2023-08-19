# Setting network static IP
Edit file netplan:
```ssh
sudo nano /etc/netplan/01-netcfg.yaml
```
Konfigurasi file menjadi seperti berikut:
![Edit file netcfg](https://iili.io/HbfiY5G.png)
Terapkan perubahan dengan perintah:
```ssh
sudo netplan apply
```
Cek perubahan konfigurasi dengan perintah:
```ssh
ip addr show dev enp1s0
```
![hasil konfigurasi](https://iili.io/Hbfiaef.png)
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