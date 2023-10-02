# How to create local repository for debian package

## Langkah 1 - Install requirement

Update sistem:
```sh
sudo apt update && sudo apt upgrade
```
![](/image/2.1.png)

Install `dpkg-dev`:
```sh
sudo apt install dpkg-dev
```
![](/image/2.2.png)

# Langkah 2 - Membuat direktori untuk repository lokal

Buat direktori lokal di sudo `/opt/local/debs` menggunakan perintah:

```sh
sudo mkdir -p /opt/local/debs
```

![](/image/2.3.png)

pindah ke direktori yang baru dibuat:

```sh
cd /opt/local/debs
```

![](/image/2.4.png)

# Langkah 3 - Menambahkan paket debian ke repositori lokal

Tambahakan paket debian yang sebelumnya telah dibuat:

```sh
sudo cp /home/ianation/debpkgs/hello-world_1.0-1_arm64.deb /opt/local/debs
```

![](/image/2.6.png)

# Langkah 4 - Membuat paket repositori meta untuk APT

Masuk sebagai super user:
```sh
sudo su

dpkg-scanpackages . /dev/null > Release
```

![](/image/2.7.png)

```sh
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz
```

![](/image/2.8.png)

List file yang telah dibuat menggunakan perintah di atas:
![](/image/2.9.png)

# Langkah 5 - Menambahkan lokal repositori ke file `sources.list` 

Edit file `sources.list`:
```sh
sudo nano /etc/apt/sources.list
```

Tambahkan kode berikut di line paling bawah:
```sh
deb [trusted=yes] file:/opt/local/debs ./
```

![](/image/2.10.png)

# Langkah 6 - Verifikasi

Update sistem:
```sh
sudo apt update
```

![](/image/2.11.png)

Install paket debian `hello-world`:
```sh
sudo apt install hello-world
```

![](/image/2.12.png)

Hapus paket debian `hello-world`:

```sh
sudo apt remove hello-world
```

![](/image/2.13.png)