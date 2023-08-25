# Special Variables

Special variables adalah variabel-variabel khusus yang sudah didefinisikan dalam lingkungan shell dan digunakan untuk menyimpan informasi yang spesifik terkait dengan skrip, proses, dan lingkungan. Berikut adalah beberapa contoh special variables yang sering digunakan dalam shell scripting:

1. $0: Ini adalah nama skrip itu sendiri. Ketika skrip dijalankan, variabel ini akan berisi nama skrip.

2. $1, $2, $3, ...: Ini adalah positional parameters yang digunakan untuk mengakses argumen-argumen yang diberikan kepada skrip. $1 akan berisi argumen pertama, $2 akan berisi argumen kedua, dan seterusnya.

3. $#: Ini adalah jumlah argumen (positional parameters) yang diberikan kepada skrip.

4. $@: Ini adalah daftar lengkap positional parameters yang diberikan kepada skrip. Ini memungkinkan Anda untuk mengakses semua argumen sebagai daftar.

5. $*: Ini juga adalah daftar lengkap positional parameters, tetapi masing-masing argumen dianggap sebagai satu item.

6. $?: Ini adalah exit status dari perintah terakhir yang dijalankan. Jika nilai keluaran adalah 0, itu menunjukkan bahwa perintah berhasil dijalankan tanpa masalah.

7. $ $: Ini adalah ID proses dari skrip yang sedang berjalan.

8. $!: Ini adalah ID proses dari perintah terakhir yang dijalankan di latar belakang.

9. $PWD: Ini adalah direktori kerja saat ini (present working directory).

10. $HOME: Ini adalah direktori beranda (home directory) pengguna.

11. $USER: Ini adalah nama pengguna saat ini.

12. $SHELL: Ini adalah path ke shell yang sedang digunakan.

13. $HOSTNAME: Ini adalah nama host dari komputer saat ini.

14. $RANDOM: Ini menghasilkan angka acak.

Contoh penggunaan special variables:

```sh
#!/bin/bash

echo "Nama skrip: $0"
echo "Argumen pertama: $1"
echo "Jumlah argumen: $#"
echo "Daftar argumen: $@"
echo "Exit status: $?"
echo "ID proses skrip ini: $$"
echo "ID proses perintah latar belakang: $!"
echo "Direktori kerja saat ini: $PWD"
echo "Direktori beranda: $HOME"
echo "Nama pengguna: $USER"
echo "Shell yang digunakan: $SHELL"
echo "Nama host: $HOSTNAME"
echo "Angka acak: $RANDOM"
```
Special variables memungkinkan developer untuk mengakses informasi penting tentang lingkungan, skrip, dan proses yang sedang berjalan, sehingga Anda dapat mengatur logika dan tindakan Anda dengan lebih baik.