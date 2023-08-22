# Linux Process

## Kill Process Linux
| Langkah               | Perintah                                   |
|-----------------------|--------------------------------------------|
| Menampilkan Proses    | `top`                                      |
| Informasi Proses      | `ps aux`                                   |
| Proses Berdasarkan Nama Pengguna | `ps aux \| grep javatpo+`               |
| Melokasi PID Proses   | `pidof process_name`                      |
| Menghentikan Proses Secara Paksa | `killall -SIGKILL process_name`       |
| Menghentikan Proses dengan `sudo` | `sudo killall process_name`          |
| Menghentikan Proses dalam Waktu Tertentu | `killall -y 20m process_name`    |
| Menghentikan Proses dengan `kill` dan SIGKILL | `kill -SIGKILL 5296`              |
| Menghentikan Proses dalam Waktu Tertentu | `killall -y 20m process_name`    |

## Linux terminating
| Perintah  | Deskripsi                                        |
|-----------|--------------------------------------------------|
| kill      | Memerlukan penentuan nomor PID untuk dihentikan   |
| killall   | Menghentikan lebih dari satu proses dengan satu nama |
| pkill     | Memerlukan penentuan nama proses                 |
| xkill     | Menghentikan klien server X                     |

## Linux Kill
```ssh
kill -SIGNAL PID
```
### Common signal names and numbers
| Nama Sinyal | Nomor Sinyal | Penggunaan Sinyal          |
|-------------|--------------|-----------------------------|
| SIGNULL     | 0            | NULL, memeriksa akses ke PID |
| SIGHUP      | 1            | Hangup                      |
| SIGINT      | 2            | Interupsi                   |
| SIGQUIT     | 3            | Keluar                      |
| SIGKILL     | 9            | Hentikan                    |
| SIGTERM     | 15           | Hentikan                    |
| SIGSTOP     | 24           | Hentikan                    |
| SIGTSTP     | 25           | Hentikan/jeda proses        |
| SIGCONT     | 26           | Lanjutkan proses yang dihentikan |

## Nohup command
| Perintah nohup | Deskripsi                                      |
|----------------|------------------------------------------------|
| Nama          | nohup                                          |
| Penggunaan    | Menjalankan perintah dengan mengabaikan SIGHUP |
| Fungsi        | Menjalankan perintah di latar belakang dan mengabaikan SIGHUP. Mengarahkan output ke file nohup.out. |
| Contoh Penggunaan | `nohup command-to-run &`                    |
## Linux at command
| Perintah   | Pengertian                                 | Contoh Penggunaan                                    |
|------------|--------------------------------------------|------------------------------------------------------|
| at         | Perintah untuk menjadwalkan pekerjaan satu kali di masa depan. Pekerjaan akan dieksekusi sekali pada waktu yang ditentukan. | at 10:00 PM<br>at> echo "Pekerjaan ini akan dieksekusi pada pukul 10 malam."<br>at> <Ctrl+D> |
| atq        | Menampilkan daftar pekerjaan yang dijadwalkan menggunakan perintah "at".           | atq                                                 |
| atrm       | Menghapus pekerjaan yang dijadwalkan menggunakan perintah "at" berdasarkan nomor tugas. | atrm 1                                              |
## Linux Exit command
| Perintah  | Pengertian                                        | Contoh Penggunaan                   |
|-----------|---------------------------------------------------|-------------------------------------|
| exit      | Perintah untuk keluar dari shell atau terminal.   | exit                                |
|           | Biasanya digunakan untuk mengakhiri sesi shell    |                                     |
|           | atau menutup jendela terminal.                    |                                     |
|           |                                                   |                                     |
|           | Exit memiliki kode keluar (exit code) yang bisa   | exit 0                              |
|           | diatur untuk menunjukkan status keluar dari       |                                     |
|           | suatu perintah atau skrip.                        |                                     |
|           |                                                   |                                     |
|           | Jika tidak ada argumen exit code yang diberikan, |                                     |
|           | nilai keluaran umumnya akan menjadi 0 (sukses).  |                                     |
|           |                                                   |                                     |
|           | Jika nilai exit code diberikan, itu akan menjadi  | exit 1                              |
|           | kode keluaran untuk menunjukkan adanya masalah   |                                     |
|           | atau kesalahan.                                  |                                     |

