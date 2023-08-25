# Shell Scripting Shift Through Parameters

shift adalah perintah dalam shell scripting yang digunakan untuk menggeser parameter-positional (argumen) dalam daftar argumen. Ini berguna ketika Anda ingin mengabaikan beberapa argumen awal dan hanya ingin memproses argumen yang tersisa.

Misalnya, saat menjalankan sebuah skrip dengan beberapa argumen, Anda mungkin ingin mengabaikan argumen pertama atau beberapa argumen awal dan hanya fokus pada argumen-argumen yang lebih relevan.

```sh
#\bin\bash

if [ "$#" == "0" ]
    then
    echo "pass at least 1 parameter"
    exit 1
fi

while (( $# ))
    do
        echo "You gave me $1"
        shift
    done
```
### hasil output
```sh
bash ssh_shift_param.sh hello world
```
```sh
You gave me hello
You gave me world
```