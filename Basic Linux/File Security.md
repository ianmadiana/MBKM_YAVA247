# File Security

## Linux File Ownership
Setiap sistem Linux memiliki tiga jenis pemilik:

Pengguna (user): Pengguna adalah orang yang membuat berkas tersebut. Secara default, siapa pun yang membuat berkas akan menjadi pemilik berkas tersebut. Pengguna dapat membuat, menghapus, atau mengubah berkas tersebut.
Grup (group): Sebuah grup dapat berisi beberapa pengguna. Semua pengguna yang termasuk dalam suatu grup memiliki izin akses yang sama untuk berkas.
Lainnya (other): Siapa pun yang memiliki akses ke berkas selain dari pengguna dan grup termasuk dalam kategori lainnya. Lainnya tidak membuat berkas tersebut dan juga bukan anggota grup.
Pengguna dan grup dapat dikelola secara lokal di /etc/passwd atau /etc/group.

syntax:
```sh
ls -lh 
```
### Listing akun pengguna
syntax
```sh
cut -d: -f1 /etc/passwd | column  
```
### Linux chgrp: change group
syntax
```sh
chgrp <newGroup> <fileName>  
```
### Linux chown: change owner
syntax:
```sh
chown <newOwner> <fileName>  
```
### List of Special Files
| Karakter Pertama | Jenis Berkas             |
|------------------|--------------------------|
| -                | Berkas Normal            |
| d                | Direktori                |
| l                | Simbolik Tautan          |
| p                | Named Pipe               |
| b                | Perangkat Blok           |
| c                | Perangkat Karakter       |
| s                | Soket                    |


## Linux chgrp Command | Linux Change Group| 
Perintah             | Keterangan                                            |
|----------------------|-------------------------------------------------------|
| `chgrp`              | Perintah untuk mengganti grup pemilik suatu berkas.  |
|                      | Ini digunakan untuk mengubah grup pemilik dari suatu  |
|                      | berkas atau direktori ke grup yang ditentukan.       |

| Opsi                 | Deskripsi                                            |
|----------------------|------------------------------------------------------|
| `-R` atau `--recursive` | Mengubah grup pemilik secara rekursif untuk        |
|                        | direktori dan isinya.                                |

| Contoh Penggunaan:   |                                                       |
|----------------------|-------------------------------------------------------|
| 1. Mengganti grup pemilik berkas: | `chgrp newgroup file.txt`                     |
| 2. Mengganti grup pemilik rekursif: | `chgrp -R newgroup directory/`               |

## Linux File Permission
Linux menerapkan hak akses file yang sangat ketat, setiap file akan dibeli label (file attribute) yang menjabarkan hak akses untuk user dan group terhadap file tersebut. Hanya user dan group tertentu yang bisa membaca,memodifikasi dan mengeksekusi file tersebut. Atribut ini sering disebut dengan file permission.

Untuk menjelaskan hak akses suatu file,linux menggunakan flag permission ,dimana setiap flag menjelaskan hak akses untuk user owner,group dan world/other.

- Read (R) : Hak akses untuk membaca isi file/folder.
- Write(W) : Hak akses untuk memodifikasi suatu file/memodifikasi isi folder.
- Execute(X) : Hak akses untuk mengeksekusi sutu file/menjalankan aplikasi.
  
Jadi pada attribut file permission nanti ada flag permission seperti diatas untuk menentukan hak akses user terhadap file tersebut. Selain dengan simbolic/huruf,flag file permission juga bisa dijabarkan menggunakan angka.

| Posisi  | Karakter  | Pemilikan                     |
|---------|-----------|------------------------------|
| 1       | -         | menunjukkan jenis berkas      |
| 2-4     | rw-       | izin untuk pemilik user   |
| 5-7     | rw-       | izin untuk group               |
| 8-10    | r--       | izin untuk other         |

syntax:
```ssh
chmod <groupName>+<permissionName> <fileName>  
```

## Chmod command in Linux/Unix
| Perintah      | Pengertian                                               | Contoh Penggunaan                  |
|---------------|----------------------------------------------------------|------------------------------------|
| `chmod`       | Perintah untuk mengubah izin (permissions) berkas/direktori di Linux/Unix. | `chmod 755 file.txt`              |
|               | Izin merujuk pada hak akses yang diberikan kepada       | `chmod +x script.sh`              |
|               | pengguna, grup, dan pengguna lain terhadap berkas/direktori. | `chmod u=rw,g=r,o=r file.txt`     |
|               |                                                          | `chmod 644 file.txt`              |

## Chown Command in Linux/Unix
| Perintah `chown` di Linux Unix | |
|-------------------------------|-------------------------------------------------------------------------------------|
| Deskripsi                     | Perintah `chown` digunakan untuk mengubah kepemilikan (pemilik dan grup) dari berkas atau direktori di sistem Linux/Unix.  |
|                               | Ini memungkinkan administrator untuk memodifikasi hak akses terhadap berkas/direktori. |
|                               |                                                                                     |
| Penggunaan Umum               | `chown [OPTIONS] [OWNER]:[GROUP] FILE`                                            |
|                               |                                                                                     |
| Contoh Penggunaan             | 1. Mengubah kepemilikan pemilik dan grup sebuah berkas:                           |
|                               |    `chown john:users file.txt`                                                    |
|                               |                                                                                     |
|                               | 2. Mengubah kepemilikan pemilik, tetapi mempertahankan grup berkas:                 |
|                               |    `chown john file.txt`                                                          |
|                               |                                                                                     |
|                               | 3. Mengubah kepemilikan grup sebuah berkas:                                       |
|                               |    `chown :admins file.txt`                                                       |
|                               |                                                                                     |
|                               | 4. Mengubah kepemilikan hanya grup sebuah berkas:                                 |
|                               |    `chown :users file.txt`                                                        |
|                               |                                                                                     |
|                               | 5. Mengubah kepemilikan berkas dan seluruh berkas dalam direktori:                 |
|                               |    `chown -R john:users directory/`                                              |
|                               |                                                                                     |
| Opsi                          | -R: Rekursif, mengubah kepemilikan berkas dalam direktori secara rekursif.        |
|                               | -v: Mode verbose, menampilkan detail perubahan kepemilikan.                        |
|                               | -c: Mode perubahan, hanya menampilkan pesan jika ada perubahan yang terjadi.        |
|                               |                                                                                     |
| Catatan                       | Hanya pengguna dengan hak akses root (superuser) yang dapat mengubah kepemilikan.   |

## Advanced File Permission

### Sticky Bit on Directory
File dapat diamankan di dalam direktori agar tidak dapat dihapus dari user yang tidak mempunyai hak akses dengan mencegahnya menggunakan `sticky bit`, file tersebut ditampilkan sama dengan lokasi permission `x` untuk pengguna lain (others).
Contoh:
```sh
chmod +t new1 
```
### setgid Bit on Directory
Untuk memastikan bahwa semua berkas dalam direktori dimiliki oleh pemilik grup dari direktori tersebut, setgid dapat digunakan. Itu ditampilkan di lokasi yang sama dengan izin x untuk grup. Itu direpresentasikan dengan s (x juga ada) atau S (tidak ada x).

### setgid and setuid on Regular Files
Dengan bantuan dua izin ini, berkas yang dapat dieksekusi diakses dengan izin dari pemilik berkas bukan pemilik yang menjalankan. Ini berarti jika suatu program dimiliki oleh pengguna root dan izin setuid diatur padanya, maka seorang pengguna akan menjalankan program tersebut sebagai root. Hal ini bisa berbahaya dan juga baik untuk keamanan.


## Linux File Links
| Tipe Link | Pengertian                                               | Contoh Penggunaan                                       |
|-----------|----------------------------------------------------------|---------------------------------------------------------|
| Hard Link | Hard link adalah referensi langsung ke inode sebuah file. Jika file asli dihapus, hard link tetap berlaku. | `ln file_sumber hardlink`                              |
| Symbolic Link (Symlink) | Symlink adalah referensi ke nama path dari file asli. Jika file asli dihapus, symlink tidak berlaku. | `ln -s file_sumber symlink`                           |



| Istilah        | Pengertian                                   | Contoh Penggunaan |
|----------------|----------------------------------------------|-------------------|
| Inodes         | Struktur data di sistem file UNIX           | Inodes mengandung metadata file seperti pemilik, waktu akses, ukuran, dll. |
| Direktori      | Wadah untuk menyimpan berkas dan subdirektori | `/home/user/documents/` |
| Hard Link      | Tautan ke inode yang sama dengan berkas lain | `ln file1 file2` |
| Soft Link      | Tautan khusus yang mengarah ke nama berkas   | `ln -s file target` |
| Menghapus Tautan | Menghilangkan tautan yang ada               | `rm link_name`    |
