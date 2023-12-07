# Spark SQL acces to hive table

Berikut ini adalah contoh untuk membaca data di Hive menggunakan Spark SQL:

1. Membuat variabel untuk menampung query:

   ```
   val hivetb_payments = spark.sql("SELECT * FROM payments")
   ```

   ![Alt text](image-5.png)

2. Menampilkan data:

   ```
   hivetb_payments.show()
   ```

   ![Alt text](image-6.png)
   > Jika tidak diatur isi parameter di fungsi `show()` maka akan ditampilkan 20 data teratas.

3. Menampilkan data dengan jumlah tertentu:

   ```
   hivetb_payments.show(50)
   ```

   ![Alt text](image-7.png)
   > menampilkan 50 data teratas