# Shell Loop

## Nesting Loops
Nesting loops adalah jenis pengulangan di dalam pengulangan lainnya. Hal ini memungkinkan kita untuk melakukan nesting pada berbagai jenis pengulangan seperti while, for, dan until.

## Nesting While Loops
Nesting while loops melibatkan menempatkan satu pengulangan while di dalam pengulangan while lainnya.

```sh
while [condition1]
do
   # Perintah-perintah dalam blok pertama
   while [condition2]
   do
      # Perintah-perintah dalam blok kedua
   done
done
```

## Nesting For Loops
```sh
for (( initialization; condition; iteration ))
do
   # Blok pernyataan dalam loop for pertama
   for (( initialization; condition; iteration ))
   do
      # Blok pernyataan dalam loop for kedua
   done
done
```

## Nesting until Loops
```sh
until [ condition ]
do
   # Blok pernyataan dalam loop until pertama
   until [ condition ]
   do
      # Blok pernyataan dalam loop until kedua
   done
done
```