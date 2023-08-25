# Loop Control di SH

## The infinite Loop
Suatu loop yang berjalan tanpa berakhir selama kondisi yang ditentukan tetap terpenuhi. Loop ini sering digunakan untuk menjalankan tugas-tugas yang perlu berjalan terus-menerus hingga intervensi eksternal.
```sh
while true
do
    # Blok pernyataan yang akan diulang secara terus-menerus
done
```

## The break Statement
Pernyataan break digunakan untuk menghentikan pelaksanaan loop secara paksa, bahkan jika kondisi yang diberikan belum terpenuhi. Biasanya, break digunakan ketika suatu kondisi khusus terpenuhi dan tidak perlu melanjutkan iterasi.
```sh
while [ condition ]
do
    if [ some_condition ]
    then
        break
    fi
    # Blok pernyataan lainnya
done
```

## The continue statement
Pernyataan continue digunakan untuk menghentikan iterasi saat ini dan melanjutkan ke iterasi berikutnya dalam loop. Hal ini berguna ketika kita ingin melompati beberapa pernyataan dalam satu iterasi tertentu dan langsung melanjutkan ke iterasi berikutnya.
```sh
while [ condition ]
do
    if [ some_condition ]
    then
        continue
    fi
    # Blok pernyataan lainnya
done
```