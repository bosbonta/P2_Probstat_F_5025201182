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
#1a
sd(data1 $Y - data1 $X)
```
maka akan didapatkan standar deviasi bernilai ```6.359595```

### 1b carilah nilai t (p-value)

untuk menjawab soal ini dapat menggunakan rumus

``` R
#1b
t.test (data1 $Y , data1 $X , paired=TRUE)
```
maka akan didapatkan t (p-value) bernilai ```7.6525```

### 1c

tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

uji t yang didapat dari perhitungan no 2 bernilai ```7.6525``` 
sedangkan diketahui derajat bebas bernilai 8 , didapat dari 9-1. Nilai kritis 𝑡 dengan derajat bebas 8 dan tingkat signifikansi 5%
adalah ±2,306 (lihat tabel dibawah)

![1c](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.1c.png)

Perhatikan bahwa  |𝑡ℎ𝑖𝑡𝑢𝑛𝑔| > |𝑡𝑘𝑟𝑖𝑡𝑖𝑠|, yakni 7,652 > 2,306, maka disimpulkan bahwa
hipotesis awal ditolak dan hipotesis alternatif diterima. Hal ini berarti terdapat pengaruh yang
signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan
aktivitas A pada tingkat signifikansi 5%.

>dokumentasi

![1d](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic1.png)

## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan
library seperti referensi pada modul).

### 2a Apakah Anda setuju dengan klaim tersebut?

setuju bgt

### 2b Jelaskan maksud dari output yang dihasilkan!

untuk menjawab soal ini dapat menggunakan rumus
``` R
#2b
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "less", mu = 20000,
          conf.level = 0.95)
```

>dokumentasi

![2a](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic2.png)

dari hasil output yang didapatkan adalah nilai z ```8.9744```, p-value ```1```, dan 95 percent confidence interval ```24141.49```

### 2c Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

Hipotesis awal (H0) yaitu " Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun" dapat diterima dengan alasan p-value lebih besar dari tingkat signifikansi (dari soal sebelumnya 𝛼 5% atau 0.05)

## Soal 3

Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![3a](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic3.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :

### 3a  H0 dan H1

