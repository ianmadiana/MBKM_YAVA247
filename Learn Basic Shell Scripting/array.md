# Using array in sh

Array dalam shell scripting adalah struktur data yang memungkinkan Anda menyimpan lebih dari satu nilai dalam satu variabel. Array dapat berisi angka, string, atau kombinasi keduanya. Dalam bahasa shell, seperti Bash, Anda dapat menggunakan array untuk mengelompokkan data terkait bersama-sama.

Berikut ini adalah cara menggunakan array dalam shell scripting:

## Mendeklarasikan Array:
Anda dapat mendeklarasikan array dengan menuliskan nama array diikuti oleh tanda kurung siku []. Setelah itu, Anda dapat menambahkan nilai-nilai array dengan memisahkannya dengan spasi.

```sh
# Mendeklarasikan array nama-nama buah
buah=("Apel" "Pisang" "Jeruk" "Mangga")
```
## Mengakses Nilai Array:
Anda dapat mengakses nilai dalam array dengan menggunakan indeks (mulai dari 0). Indeks digunakan untuk merujuk ke posisi elemen dalam array.

```sh
echo "Buah pertama: ${buah[0]}"  # Output: Buah pertama: Apel
echo "Buah kedua: ${buah[1]}"    # Output: Buah kedua: Pisang
```

## Menambahkan Nilai ke Array:
Anda dapat menambahkan nilai baru ke array dengan menggunakan tanda +=.

```sh
buah+=("Anggur")
```
## Menghitung Jumlah Elemen dalam Array:
Anda dapat menggunakan ${#array[@]} untuk menghitung jumlah elemen dalam array.

```sh
echo "Jumlah buah: ${#buah[@]}"  # Output: Jumlah buah: 4
```
## Meloop melalui Array:
Anda dapat menggunakan loop for untuk meloop melalui semua nilai dalam array.

```sh
for buah in "${buah[@]}"; do
    echo "Buah: $buah"
done
```
## Menghapus Nilai dari Array:
Anda dapat menggunakan perintah unset untuk menghapus nilai dari array berdasarkan indeks tertentu.

```sh
unset buah[2]  # Menghapus nilai "Jeruk"
Array Asosiatif:
```

## Array Assosiatif
Bash juga mendukung array asosiatif yang menggunakan string sebagai indeksnya, mirip dengan kamus atau kamus dalam bahasa pemrograman lain.

```sh
# Mendeklarasikan array asosiatif
mobil["merk"]="Toyota"
mobil["warna"]="Merah"

echo "Merk mobil: ${mobil["merk"]}"  # Output: Merk mobil: Toyota
echo "Warna mobil: ${mobil["warna"]}"  # Output: Warna mobil: Merah
```
Array dalam shell scripting adalah alat yang sangat bermanfaat untuk mengatur data dalam kelompok dan melakukan operasi terhadap data tersebut.