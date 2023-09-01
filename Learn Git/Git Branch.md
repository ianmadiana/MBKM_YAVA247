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
