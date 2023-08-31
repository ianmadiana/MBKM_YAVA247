# Program untuk membuat directory di hadoop


File shell script:
```sh
#!/bin/bash

# format tanggal dan jam
current_datetime=$(date +"%d-%m-%Y_Jam-%H-%M-%S")

# nama direktori
# dir_[tgl]-[bulan]-[tahun]_jam-[jam]-[menit]-[detik]
dir_name="dir_$current_datetime"

# execute hadoop command untuk membuat direktori di /tmp
/usr/local/hadoop/bin/hadoop fs -mkdir "/tmp/$dir_name"
```

crontab:
```
30-35/2 * * * * /bin/bash /home/hadoop/dir.sh
```