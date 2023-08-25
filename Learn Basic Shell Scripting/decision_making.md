# Shell Desicion Making

Shell dalam konteks pemrograman mengacu pada lingkungan yang menyediakan antarmuka antara pengguna dan sistem operasi. Salah satu aspek penting dalam pemrograman shell adalah pengambilan keputusan (decision making), di mana Anda dapat mengontrol alur program berdasarkan kondisi-kondisi tertentu. Dalam shell, ini umumnya dicapai menggunakan struktur kontrol seperti pernyataan if, else, dan perulangan.

Berikut adalah beberapa aspek penting tentang pengambilan keputusan di dalam shell:

## 1. Pernyataan IF-ELSE: 
Pernyataan if digunakan untuk melakukan pengujian kondisi. Jika kondisi yang diberikan benar (true), maka blok perintah di dalam if akan dieksekusi. Jika kondisinya salah (false), maka blok perintah di dalam else (jika ada) akan dieksekusi.

Contoh:

```sh
if [ kondisi ]; then
    # perintah yang dieksekusi jika kondisi benar
else
    # perintah yang dieksekusi jika kondisi salah
fi
```

## 2. Pernyataan CASE: 
Pernyataan case digunakan untuk memilih tindakan yang akan diambil berdasarkan nilai dari suatu variabel.

Contoh:

```sh
case $var in
    nilai1)
        # perintah untuk nilai1
        ;;
    nilai2)
        # perintah untuk nilai2
        ;;
    *)
        # perintah default jika tidak ada nilai yang cocok
        ;;
esac
```

## 3. Pernyataan Uji Kondisi: 
Dalam shell, Anda juga dapat menggunakan pernyataan uji kondisi seperti -eq (sama dengan), -ne (tidak sama dengan), -lt (kurang dari), -gt (lebih dari), dll., untuk membandingkan nilai-nilai numerik.

Contoh:

```sh
if [ $nilai -gt 10 ]; then
    # perintah yang dieksekusi jika nilai lebih dari 10
fi
```

## 4. Perulangan: 
Dalam shell, Anda dapat menggunakan perulangan untuk mengulangi serangkaian perintah berdasarkan kondisi tertentu. Pernyataan for dan while umum digunakan untuk tujuan ini.

Contoh:

```sh
for i in 1 2 3 4 5; do
    # perintah yang akan diulang untuk setiap nilai i
done
```
```sh
while [ kondisi ]; do
    # perintah yang akan diulang selama kondisi terpenuhi
done
```

Pengambilan keputusan dalam shell sangat penting untuk mengendalikan alur program, melakukan tindakan yang sesuai berdasarkan kondisi, dan mengulang perintah-perintah tertentu sejumlah kali yang diperlukan.