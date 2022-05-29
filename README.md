## Nama_NRP
| Nama             | NRP        |
|------------------|------------|
| Amsal Herbert    | 5025201182 |

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas

![1a](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.1a.png)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

>membuat tabel di R

Untuk menjawab soal nomor 1 ini, pertama akan dibuat tabel dengan R supaya mempermudah mengerjakan soal
pembuatannya dengan 

``` R
#1
data1=data.frame(responden=c(1,2,3,4,5,6,7,8,9),
                  X=c(78,75,67,77,70,72,78,74,77), 
                  Y=c(100,95,70,90,90,90,89,90,100))

```

![1b](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.1b.png)

### 1a Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel di atas

untuk menjawab soal ini dapat menggunakan rumus

``` R
#1b
sd(data1 $Y - data1 $X)
```
maka akan didapatkan nilai ```6.359595```
