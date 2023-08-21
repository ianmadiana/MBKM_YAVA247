### Linux Users
#
- Linux Users Command :
    | Command     | Fungsi    
    |-------------------|----|
    | whoami     | Menyampaikan tentang nama pengguna sistem.       |
    | who        | Memberikan informasi tentang pengguna yang masuk ke sistem.        |
    | who am i   | Perintah ini menampilkan informasi tentang pengguna saat ini saja. |
    | w          | Menampilkan informasi tentang pengguna yang sedang masuk dan apa yang mereka lakukan. |
    | id         | Menampilkan ID pengguna, ID grup utama, dan daftar grup yang dimiliki pengguna. |
#
- Linux Su Command :
    | Command             | Fungsi          |
    |--------------------|---------------------|
    | su [username]   | Menjalankan shell sebagai pengguna lain.   |
    | su root    | Mengganti pengguna menjadi root jika mengetahui kata sandi root.         |
    | su - sssit      | Berpindah dari pengguna lain ke pengguna sssit dengan memasukkan kata sandi. |
    | su - jtp        | Berpindah dari pengguna root ke pengguna jtp tanpa meminta kata sandi.   |
    | su - $username     | Menggunakan lingkungan shell dari pengguna target dengan su - [username]. |
    | su -     | Mengasumsikan root sebagai pengguna target.      |
    | sudo [command]     | Memungkinkan pengguna menjalankan program dengan hak akses pengguna lain. |
    | sudo su -      | Beralih menjadi pengguna root tanpa memasukkan kata sandi root.      |
    | sudo /usr/sbin/useradd -m akki | Membuat pengguna baru 'akki' dengan hak akses sudo.       |
    | sudo -i      | Berpindah menjadi pengguna root dengan lingkungan shell root.   |
    | sudo -s    | Menjalankan shell sebagai pengguna root.     |

#
- Linux User Management:
    | Command             | Fungsi          |
    |--------------------|---------------------|
    |useradd | Menambahkan pengguna baru |
    | userdel | Menghapus akun pengguna |
    | usermod |Mengubah properti pengguna yang ada|
    | chsh | Mengubah shell login pengguna |
    | useradd -m	| Menambahkan pengguna dengan membuat direktori home |
    | userdel -r	| Menghapus akun pengguna dan direktori home |
    | usermod -s	| Mengubah shell login pengguna |
    | grep admin /etc/sudoers	| Mengecek pengguna yang dapat menggunakan sudo |
#
- Linux Password:
    | Command             | Fungsi          |
    |--------------------|---------------------|
    | passwd	|Mengatur kata sandi pengguna|
    | passwd [userName]	| Mengubah kata sandi pengguna tertentu |
    | openssl passwd	| Menggunakan enkripsi openssl untuk membuat kata sandi |
    | chage -l [userName]	| Menampilkan informasi tentang pengaturan kata sandi pengguna |
    | usermod -L [userName]	| Menonaktifkan kata sandi pengguna dengan mengunci akun |
    | usermod -U [userName]	| Membuka kunci kata sandi pengguna yang sudah dinonaktifkan |
#
- Linux Groups:
    | Command             | Fungsi          |
    |--------------------|---------------------|
    |sudo groupadd [groupName]	| Membuat atau menambahkan grup baru di sistem|
    | groups | Menampilkan grup-grup yang dimiliki oleh pengguna saat ini |
    | sudo usermod -a -G [group] [userName]	| Menambahkan pengguna ke grup tertentu |
    | sudo groupmod -n [oldGroup] [newGroup] |	Mengubah nama grup yang sudah ada |
    | sudo groupdel [group]	| Menghapus grup secara permanen dari sistem |
    | sudo gpasswd -A [user] [group]	| Menyerahkan kontrol keanggotaan grup kepada pengguna lain |
    | sudo gpasswd -A "" [group]	| Menghapus semua administrator dari sebuah grup |