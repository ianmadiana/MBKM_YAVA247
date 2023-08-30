# Shell Functions

Fungsi Shell (Shell Functions) adalah blok kode yang dapat didefinisikan dalam shell (lingkungan baris perintah) dan digunakan untuk menjalankan tugas-tugas tertentu. Fungsi ini memungkinkan Anda mengelompokkan serangkaian pernyataan atau perintah ke dalam satu unit yang dapat dipanggil dan dieksekusi dengan nama tertentu. Ini mempermudah pengelolaan kode, mengurangi duplikasi, dan meningkatkan keterbacaan.

Berikut adalah penjelasan tentang beberapa aspek penting terkait dengan fungsi shell:

## 1. Membuat Fungsi (Creating Functions):
Anda dapat membuat fungsi shell dengan mendefinisikan blok kode di dalamnya. Format umumnya adalah:

```sh
#!/bin/sh

# Define your function here
Hello () {
   echo "Hello World $1 $2"
}
Hello $1 $2
```
Menjankan script di terminal:
```sh
./program.sh John Jane
```
Hasil output:
```sh
Hello World John Jane
```
## 2. Meneruskan Parameter ke Fungsi (Pass Parameters to a Function):
Fungsi shell dapat menerima parameter sebagai input. Parameter ini diteruskan saat memanggil fungsi. Contohnya:

```sh
contoh_fungsi() {
    echo "Parameter yang diterima: $1"
}
contoh_fungsi nilai_parameter
```

## 3. Mengembalikan Nilai dari Fungsi (Returning Values from Functions):
Meskipun fungsi shell umumnya digunakan untuk menjalankan perintah, Anda juga dapat mengembalikan nilai dari fungsi tersebut. Ini dilakukan dengan menggunakan perintah return:

```sh
fungsi_dengan_return() {
    local hasil=42
    return $hasil
}
fungsi_dengan_return
echo "Hasil fungsi: $?"
```

## 4. Fungsi Bersarang (Nested Functions):
Anda dapat menempatkan definisi fungsi di dalam fungsi lainnya. Ini dikenal sebagai fungsi bersarang. Fungsi dalam fungsi hanya dapat dipanggil di dalam fungsi induknya.

Contoh scipt:
```sh
#!/bin/sh

# Calling one function from another
number_one () {
   echo "This is the first function speaking..."
   number_two
}

number_two () {
   echo "This is now the second function speaking..."
}

# Calling function one.
number_one
```

Hasil output:
```
This is the first function speaking...
This is now the second function speaking...
```

## 5. Memanggil Fungsi dari Prompt (Function Call from Prompt):
Setelah fungsi didefinisikan, Anda dapat memanggilnya dari prompt perintah shell. Misalnya:

```sh
hello() {
    echo "Halo, dunia!"
}
hello
```

Jadi, fungsi shell sangat berguna untuk mengatur kode, menghindari duplikasi, dan mempermudah pemeliharaan. Dengan parameter dan nilai kembali, Anda dapat membuat kode yang lebih fleksibel dan dinamis.