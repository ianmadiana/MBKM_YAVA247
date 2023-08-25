# Shell Basic Operators

## 1. Arithmetic Operators (Operator Aritmatika):
Operator aritmatika digunakan untuk melakukan operasi matematika pada nilai-nilai numerik.
- `+` : Penjumlahan
- `-` : Pengurangan
- `*` : Perkalian
- `/` : Pembagian
- `%` : Modulus (Sisa hasil bagi)
- `**` : Pemangkatan
  
Contoh penggunaan operator aritmatika:

```sh
a=10
b=3
echo "a + b = $((a + b))"
echo "a * b = $((a * b))"
```
## 2. Relational Operators (Operator Relasional):
Operator relasional digunakan untuk membandingkan dua nilai atau ekspresi.

- -eq : Sama dengan
- -ne : Tidak sama dengan
- -lt : Kurang dari
- -le : Kurang dari atau sama dengan
- -gt : Lebih dari
- -ge : Lebih dari atau sama dengan
  
Contoh penggunaan operator relasional:

```sh
x=5
y=8
if [ $x -lt $y ]; then
    echo "$x lebih kecil dari $y"
fi
```
## 3. Boolean Operators (Operator Boolean):
Operator boolean digunakan untuk mengkombinasikan ekspresi-ekspresi logika.

- ! : Negasi (NOT)
- -a : AND logika
- -o : OR logika
  
Contoh penggunaan operator boolean:

```sh
p=true
q=false
if [ ! $p -a $q ]; then
    echo "Kondisi terpenuhi"
fi
```
## 4. String Operators (Operator String):
Operator string digunakan untuk melakukan operasi pada nilai-nilai string.

- = : Sama dengan (untuk membandingkan string)
- != : Tidak sama dengan (untuk membandingkan string)
- -z : Memeriksa apakah string kosong
- -n : Memeriksa apakah string tidak kosong
- Concatenation: Menggabungkan dua string dengan hanya menyatukan mereka.

Contoh penggunaan operator string:

```sh
str1="Hello"
str2="World"
if [ $str1 = $str2 ]; then
    echo "Kedua string sama"
else
    echo "Kedua string berbeda"
fi
```

## 5. File Test Operators (Operator Uji Berkas):
Operator uji berkas digunakan untuk memeriksa kondisi-kondisi terkait berkas.

- -e : Memeriksa apakah berkas ada
- -f : Memeriksa apakah berkas adalah berkas biasa
- -d : Memeriksa apakah berkas adalah direktori
- -r : Memeriksa apakah berkas dapat dibaca
- -w : Memeriksa apakah berkas dapat ditulis
- -x : Memeriksa apakah berkas dapat dieksekusi
  
Contoh penggunaan operator uji berkas:

```sh
file="example.txt"
if [ -e $file ]; then
    echo "Berkas $file ada"
fi
```

Operator-operator di atas sangat penting dalam scripting shell untuk melakukan operasi matematika, pengujian kondisi, manipulasi string, dan pemeriksaan berkas.