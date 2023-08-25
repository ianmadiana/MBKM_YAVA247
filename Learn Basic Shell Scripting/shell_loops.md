# Loops In Shell

Looping dalam shell scripting memungkinkan Anda untuk menjalankan serangkaian perintah atau tugas berulang kali. Ada beberapa cara untuk melakukan looping dalam shell, di antaranya adalah menggunakan perintah `for`, `while`, dan `until`. Berikut adalah contoh penggunaan masing-masing jenis looping:

1. Loop for
   Loop for digunakan untuk melakukan iterasi melalui daftar nilai tertentu.

   ```sh
   #!/bin/bash

    # Contoh loop for
    for i in 1 2 3 4 5
        do
            echo "Iterasi ke-$i"
        done


2. Loop while:
   Loop while digunakan untuk melakukan iterasi selama kondisi tertentu terpenuhi.
   ```sh
   #!/bin/bash

    # Contoh loop while
    counter=1

    while [ $counter -le 5 ]
        do
            echo "Iterasi ke-$counter"
            ((counter++))
        done

3. Loop until:
   Loop until mirip dengan loop while, tetapi dilakukan selama kondisi tidak terpenuhi.
   ```sh
   #!/bin/bash

    # Contoh loop until
    counter=1

    until [ $counter -gt 5 ]
        do
            echo "Iterasi ke-$counter"
            ((counter++))
        done

