# Linux Netwworking Command
| Perintah      | Pengertian                                  | Contoh Penggunaan                           |
|---------------|---------------------------------------------|---------------------------------------------|
| ifconfig      | Menampilkan dan mengonfigurasi antarmuka jaringan pada sistem. | `ifconfig`                                 |
| ip            | Menampilkan informasi tentang konfigurasi jaringan. | `ip address show`                         |
| traceroute    | Melacak rute paket melalui jaringan hingga tujuan. | `traceroute google.com`                   |
| tracepath     | Versi sederhana dari traceroute.           | `tracepath google.com`                    |
| ping          | Mengirimkan paket ke host dan mengukur waktu respons. | `ping 8.8.8.8`                            |
| netstat       | Menampilkan informasi tentang koneksi jaringan, routing, dan statistik. | `netstat -tuln`                          |
| ss            | Menampilkan informasi lebih rinci tentang koneksi jaringan. | `ss -tuln`                               |
| dig           | Menggunakan perintah DNS lookup.           | `dig google.com`                          |
| nslookup      | Menampilkan informasi DNS tentang domain tertentu. | `nslookup openai.com`                    |
| route         | Menampilkan atau mengonfigurasi tabel rute jaringan. | `route -n`                                |
| host          | Melakukan DNS lookup dan menampilkan informasi tentang domain. | `host openai.com`                        |
| arp           | Menampilkan dan mengelola cache ARP.      | `arp -a`                                  |
| iwconfig      | Mengonfigurasi antarmuka nirkabel (Wi-Fi). | `iwconfig wlan0`                          |
| hostname      | Menampilkan atau mengatur nama host sistem. | `hostname`                               |
| curl / wget   | Mengunduh file atau data melalui protokol HTTP, HTTPS, FTP, dan lainnya. | `curl https://example.com` atau `wget https://example.com` |
| mtr           | Menggabungkan traceroute dan ping untuk memberikan laporan perjalanan jaringan. | `mtr google.com`                         |
| whois         | Mengambil informasi tentang domain atau alamat IP dari basis data whois. | `whois openai.com`                       |
| ifplugstatus  | Memeriksa apakah antarmuka jaringan fisik terhubung atau terputus. | `ifplugstatus eth0`                     |

## Curl command
| Perintah Curl     | Pengertian                                       | Contoh Penggunaan                  |
|-------------------|--------------------------------------------------|-----------------------------------|
| `curl [URL]`      | Mengambil data dari URL dan menampilkannya       | `curl https://www.example.com`    |
| `curl -O [URL]`   | Mengunduh file dari URL dan menyimpannya         | `curl -O https://www.example.com/file.txt` |
| `curl -I [URL]`   | Menampilkan hanya header dari URL                | `curl -I https://www.example.com` |
| `curl -X [METHOD] [URL]` | Mengirim permintaan HTTP dengan metode tertentu | `curl -X POST https://api.example.com/data` |
| `curl -d [DATA] [URL]` | Mengirim data dalam permintaan POST           | `curl -d "key=value" https://api.example.com/submit` |
| `curl -H [HEADER] [URL]` | Mengatur header kustom dalam permintaan      | `curl -H "Authorization: Bearer TOKEN" https://api.example.com/resource` |
| `curl -o [OUTPUT_FILE] [URL]` | Menyimpan hasil dalam file yang ditentukan | `curl -o output.html https://www.example.com` |

## Telnet command
| Perintah        | `telnet`                                                                       |
|------------------|-------------------------------------------------------------------------------|
| Pengertian       | Perintah `telnet` digunakan untuk mengakses host atau server melalui protokol Telnet, yang memungkinkan koneksi jaringan berbasis teks. Ini berguna untuk menguji konektivitas, mengakses layanan jarak jauh, dan sebagainya. |
| Contoh Penggunaan| 1. Menghubungi server Telnet pada port default (23):                            |
|                  |    ```
|                  |    telnet example.com
|                  |    ```                                                                        |
|                  |                                                                              |
|                  | 2. Menghubungi server Telnet dengan port khusus:                               |
|                  |    ```
|                  |    telnet example.com 8080
|                  |    ```                                                                        |
|                  |                                                                              |
|                  | 3. Menghubungkan ke server menggunakan alamat IP:                              |
|                  |    ```
|                  |    telnet 192.168.1.1
|                  |    ```                                                                        |

## SSH Linux
| SSH (Secure Shell) di Linux |                                    |
|-----------------------------|------------------------------------|
| **Pengertian**              | SSH adalah protokol jaringan yang   |
|                             | digunakan untuk mengamankan komunikasi   |
|                             | antara dua perangkat melalui jaringan, |
|                             | seperti mengakses server dari jarak   |
|                             | jauh dengan aman. Dengan menggunakan  |
|                             | enkripsi, SSH mengamankan informasi   |
|                             | yang dikirimkan, seperti kata sandi   |
|                             | dan data rahasia lainnya.             |
| **Contoh Penggunaan**       | - Mengakses server dari jarak jauh   |
|                             |   dengan perintah:                   |
|                             |   ```
|                             |   ssh username@alamat_ip
|                             |   ```                                |
|                             | - Mengunggah file ke server dengan   |
|                             |   SCP (Secure Copy Protocol):        |
|                             |   ```
|                             |   scp file_lokal.txt username@alamat_ip:tujuan/
|                             |   ```                                |
|                             | - Menjalankan perintah pada server   |
|                             |   dari jarak jauh:                   |
|                             |   ```
|                             |   ssh username@alamat_ip 'perintah_linux'
|                             |   ```                                |

## Linux mail command
| Perintah         | Pengertian                                             | Contoh Penggunaan                                                   |
|------------------|--------------------------------------------------------|--------------------------------------------------------------------|
| mail             | Perintah untuk mengirim dan membaca email dari terminal | Mengirim email: `echo "Isi email" \| mail -s "Subjek" user@example.com` <br> Membaca email: `mail` |
