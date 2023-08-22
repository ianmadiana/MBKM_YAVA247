| I/O Redirection di Linux  | Deskripsi dan Contoh Penggunaan                                            |
|--------------------------|---------------------------------------------------------------------------|
| Redireksi Masukan (`<`)  | Mengalihkan masukan dari berkas atau perintah ke program.                |
|                          | Misalnya:                                                                  |
|                          | - `sort < data.txt`                                                       |
|                          | Ini mengalihkan isi berkas 'data.txt' sebagai masukan ke perintah 'sort'. |
|--------------------------|---------------------------------------------------------------------------|
| Redireksi Keluaran (`>`) | Mengalihkan keluaran program ke berkas atau perintah lain.               |
|                          | Misalnya:                                                                  |
|                          | - `ls > filelist.txt`                                                     |
|                          | Ini mengalihkan daftar berkas dalam direktori ke berkas 'filelist.txt'.   |
|--------------------------|---------------------------------------------------------------------------|
| Redireksi Append (`>>`)  | Seperti `>`, tetapi menambahkan keluaran ke berkas tanpa menghapusnya.   |
|                          | Misalnya:                                                                  |
|                          | - `echo "Baris baru" >> file.txt`                                         |
|                          | Ini menambahkan "Baris baru" ke berkas 'file.txt' tanpa menghapusnya.     |
|--------------------------|---------------------------------------------------------------------------|
| Redireksi Error (`2>`)   | Mengalihkan keluaran kesalahan (stderr) ke berkas atau perintah.         |
|                          | Misalnya:                                                                  |
|                          | - `ls /tidak_ada_berkas 2> error.log`                                     |
|                          | Ini mengalihkan pesan kesalahan ke berkas 'error.log'.                    |
|--------------------------|---------------------------------------------------------------------------|
| Pipa (`|`)               | Mengalihkan keluaran suatu perintah sebagai masukan ke perintah lain.     |
|                          | Misalnya:                                                                  |
|                          | - `ls -l | grep "file"`                                                   |
|                          | Ini memfilter hasil 'ls -l' dengan perintah 'grep' untuk mencari "file".  |
