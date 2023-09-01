# Git Commands
Berikut adalah beberapa basic command di Git:
1. Cek versi git yang terpasang
   ```sh
   git --version
   ```
2. Menambahkan username dan alamat email Git untuk mengidentifikasi pemilik pada saat commit
   
   Menambahkan username:
   ```sh
   git config --global user.name "username"
   ```
   Menambahkan alamat email:
   ```sh
      git config --global user.email "username@email.com"
    ```
3. Melihat informasi git config
   ```sh
   git config --global --list
   ```
4. Berpindah cabang (branch) ke master/main
   ```sh
   git checkout master
   ```
   Perintah `git checkout` digunakan untuk berpindah ke cabang atau titik sejarah tertentu dalam repositori.
5. Mengambil (pull) perubahan dari suatu cabang
   ```sh
   git pull origin NAME-OF-BRANCH -u
   ```
   Perintah "git pull" digunakan untuk mengambil perubahan terbaru dari cabang yang ada di repositori jarak jauh (remote repository) dan menggabungkannya dengan cabang yang sedang Anda kerjakan. Opsi "-u" (atau "--set-upstream") digunakan untuk menghubungkan cabang yang sedang Anda kerjakan dengan cabang di repositori jarak jauh, sehingga Anda tidak perlu lagi secara eksplisit menyebutkan cabang tersebut saat menjalankan perintah git pull selanjutnya.
6. Membuat branch baru
   ```sh
   git checkout -b branch-name
   ```
7. Cek perubahan pada file
   ```sh
   git status
   ```
8. Menambahkan file ke staging area
   ```sh
   git add *
   ```
   Tanda bintang (*) atau arterisk digunakan untuk menambahkan semua file ke are staging.
   ```sh
   git add file-name
   ```
   Perintah di atas digunakan untuk menambahkan sebuah file ke area staging.
9.  Mengirim perubahan ke branch master
    ```sh
    git push origin branch-name
    ```
10. Mengembalikan perubahan yang belum di-commit
    ```sh
    git checkout .
    ```
    Perintah `git checkout .` digunakan untuk mengembalikan perubahan yang belum di-commit pada direktori kerja Anda menjadi seperti yang ada dalam HEAD (titik terakhir dalam riwayat commit). Dengan kata lain, perintah ini akan menghapus perubahan yang belum di-commit dan mengembalikan semua file yang diubah ke status terakhir yang dicommit.
11. Menghapus file yang tidak terlacak
    ```sh
    git clean -f
    ```
    Perintah `git clean -f` digunakan untuk menghapus file yang tidak terlacak (untracked files) dari direktori kerja Anda. File-file ini adalah file yang tidak pernah di-commit dan tidak ada dalam riwayat commit Git. Penggunaan perintah ini akan menghapus semua file yang tidak terlacak dalam direktori kerja Anda secara permanen, sehingga Anda harus berhati-hati saat menggunakannya.
12. Merge branch yang berbeda dengan master branch
    ```sh
    git checkout branch-name
    git merge master
    ```
13. Merge master branch dengan branch yang baru dibuat
    ```sh
    git checkout master
    git merge branch-name
    ```

# Membuat projek baru di Gitlab
1. Buat new project/repository
   ![ss](https://iili.io/HyZkpTv.png)
2. Pilih `Create blank project`
   ![ss](https://iili.io/HyZkZ3F.png)
3. Masukkan nama project
   ![ss](https://iili.io/HyZkL41.png)
4. Projek telah berhasil dibuat
   ![ss](https://iili.io/HyZktYg.png)

# Clone project di Git
git clone adalah perintah dalam sistem kontrol versi Git yang digunakan untuk menduplikasi (meng-kloning) seluruh repositori Git dari repositori jarak jauh (remote repository) ke dalam repositori lokal. Ini adalah cara yang umum digunakan untuk mendapatkan salinan penuh dari proyek yang sudah ada atau proyek open source dari repositori jarak jauh, sehingga Anda dapat berkontribusi atau bekerja di dalamnya.

Sintaks dasar git clone:
```sh
git clone <URL repositori jarak jauh> [nama direktori tujuan]
```

Contoh git clone:
```sh
git clone https://gitlab.com/personal1973735/learn.git
```

![](https://iili.io/HyZgj0N.png)
![](https://iili.io/HyZgwgI.png)

# Git Branch
Branch adalah sebuah penunjuk kepada suatu commit. Branch Git adalah potret dari suatu proyek beserta perubahan-perubahannya, pada suatu waktu.

Saat mengerjakan proyek yang besar, ada sebuah repositori utama dengan semua kodenya, biasanya disebut sebagai main atau master.

Branch mengizinkanmu untuk membuat versi baru dan independen dari proyek utama aslimu yang sedang berjalan. Kamu dapat membuat sebuah branch untuk mengedit proyeknya untuk membuat perubahan-perubahan, untuk menambahkan fitur baru, atau untuk menulis tes saat kamu ingin memperbaiki suatu bug. Dan branch baru mengizinkanmu untuk melakukan ini tanpa memengaruhi kode utama.
![branch](https://static.javatpoint.com/tutorial/git/images/git-branch.png)
Jadi, kesimpulannya – branch mengizinkanmu untuk membuat perubahan pada basis kode tanpa memengaruhi kode inti sampai kamu sudah sangat siap untuk mengimplementasikan perubahan-perubahan tersebut.

## Git master branch
Branch master adalah branch default di Git. Branch ini dipakai ketika commit pertama dibuat di sebuah projek. Saat membuat commit pertama, maka akan diarahkan ke branch master sebagai starting point.

## Operations on Branches
Kita bisa mengerjakan beberapa operasi di branch Git. Perintah git branch mengizinkan developer untuk membuat, list, ubah nama, dan hapus branch.

### Create Branch
Membuat brach:
```sh
git branch  <branch name> 
```

### List Branch
Menampilkan semua list branch:
```sh
git branch --list  
```
atau
```sh
git branch
```

### Hapus Branch
```sh
git branch -d <branch_name>
```
### Delete a Remote Branch
Menghapus remote branch
```sh
git push origin -delete <branch name>
```
### Switch Branch
Mengganti branch:
```sh
git checkout<branch name>
```
### Mengganti nama branch
```sh
git branch -m <old branch name><new branch name>
```

### Merge Branch
Merge branch lain dengan branch yang sekarang sedang aktif:
```sh
git merge <branch name>
```

# Add or Edit project and Commit to branch
- Clone projek dari Git:
   ![ss](https://iili.io/HyZgj0N.png)
- Edit file di projek tersebut:
  ![](https://iili.io/HytWLLF.png)
- Cek git status:
  ![](https://iili.io/HytWZqg.png)
- Tambahkan file ke stage area:
   ![](https://iili.io/HytWt1a.png)
  Tambahkan file yang telah diedit ke stage area dengan `git add *`dan lakukan commit dengan `git commit -m "pesan commit"`
- Push ke repository:
  ![](https://iili.io/HytWDrJ.png)

# Merge request di Git
Dalam banyak sistem manajemen repositori Git, seperti GitHub, GitLab, dan Bitbucket, "merge request" (dikenal juga sebagai "pull request" di GitHub) adalah mekanisme yang memungkinkan kontributor untuk mengajukan perubahan kode ke repositori utama proyek dan meminta pemilik repositori untuk meninjau dan menggabungkan perubahan tersebut. Ini adalah cara umum untuk mengelola kolaborasi dalam pengembangan perangkat lunak terbuka atau proyek berbasis Git.

## Create issue di Gitlab
1. Pilih menu `issue` dan pilih `New issue`:
   ![](https://iili.io/HytwNvj.png)
2. Berikan judul dan deskripsi:
   ![ss](https://iili.io/HytwNvj.png)
3. Issue berhasil dibuat:
   ![](https://iili.io/HytwkTQ.png)