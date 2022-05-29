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

untuk menjawab soal ini dapat menggunakan cara
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

```
P(Z > 8.9744) = 1 - P(Z < 8.977)
              = 1 - 1 = 0
```

Hipotesis awal (H0) yaitu " Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun" dapat diterima dengan alasan nilai t dari uji z adalah mendekati 0

## Soal 3

Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![3a](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic3.png)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :

### 3a  H0 dan H1
Hipotesis Awal H0 : "Rata-rata saham di bandung = di Bali"

Hipotesis alternatif H1 : "Rata-rata saham di bandung != di Bali"

### 3b  Hitung Sampel Statistik
untuk menjawab soal ini dapat menggunakan cara
``` R
#3b
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y=2.79, s.y = 1.32, n.y = 27, 
          alternative = "two.sided", mu = 0, var.equal = TRUE,
          conf.level = 0.95)
```

>dokumentasi

![3b](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.3a.png)

### 3c  Lakukan Uji Statistik (df =2)
untuk menjawab soal ini dapat menggunakan 
```R
#3c
plotDist(dist ='t', df = 2, col="red")
```
hasil grafik yang didapat adalah
![3c](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.3b.png)

### 3d Nilai Kritikal
dapat menggunakan cara 
```qt(p = 0.05, df = 2, lower.tail = FALSE)```
maka didapatkan nilainya ```2.919986```

>dokumentasi

![3d](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.3c.png)

### 3e Keputusan

Hipotesis awal H0 ditolak karena nilai T lebih kecil dari sp

```R
sp <- (((n_bandung-1)*dp_bandung)+ ((n_bali-1)*dp_bali))/(n_bali + n_bandung - df)
T <- (n_bandung - n_bali)/(sp*((1/n_bandung) + (1/n_bali)))
```
sp bernilai ```1.463182``` dan T  bernilai ```-60.97492```

### 3f Kesimpulan

Kesimpulan yang didapatkan yaitu **tidak terdapat** perbedaan rata-rata yang terjadi jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal

## Soal 4

Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:

### 4a
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians
```R
 DataKucingITS <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
 byGroup <- split(DataKucingITS, DataKucingITS$Group)
 grup1 <- byGroup$`1`
 grup2 <- byGroup$`2`
 grup3 <- byGroup$`3`
 ```

 ```qqnorm(grup1$Length,main = "Grup1")```
 
 ![4a](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.4a.png)
 
 ``` qqnorm(grup2$Length,main = "Grup2")```
 
 ![4b](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.4b.png)
  
  ``` qqnorm(grup3$Length,main = "Grup3")```
  
  ![4c](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.4c.png)
### 4b
carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
daoat menggunakan
```R
bartlett.test(DataKucingITS$Length, DataKucingITS$Group)
```
maka nilainya K-squared  ```0.43292```, df  ```2```, p-value  ```0.8054```

### 4c
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1.

dapat menggunakan

```R
model1 <- lm(DataKucingITS$Length~DataKucingITS$Group)
summary(model1)
```

### 4d
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?

Berdasarkan hasil 4C, didapatkan nilai P adalah ```0.6401```. Sehingga Hipotesis Awal H0 diterima

### 4e
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan!
dapat menggunakan 
```R
av <- aov(Length ~ factor(Group), data = DataKucingITS)
TukeyHSD(av)
```
### 4f
Visualisasikan data dengan ggplot2

```R
library(ggplot2)
ggplot(DataKucingITS, aes(x = Group, y = Length)) + 
       geom_boxplot(fill = "Red", colour = "black")  + 
       scale_x_discrete() + xlab("Group") + ylab("Length")
```     
hasil visualisasi
![4d](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.4d.png)
  

## Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut:

### 5a Buatlah plot sederhana untuk visualisasi data
pertama harus menginstall package yang ada
lalu panggil file GTL.cvs. untuk memfisualisasi kta gunakan read_cvs dan head(GTL)
```R
DataGTL <- read_csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
qplot(x = Temp, y = Light, geom = "jitter", data = DataGTL) +
  facet_grid(.~Glass, labeller = label_both)
```
![5a](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.5a.png)

### 5b Lakukan uji ANOVA dua arah!
dapat dilakukan cara berikut
```R
DataGTL$Glass <- as.factor(DataGTL$Glass)
DataGTL$Temp <- as.factor(DataGTL$Temp)

anova <- aov(Light ~ Glass*Temp, data = DataGTL)
summary(anova)
```
Kedua variabel pada DataGTL dipisah lalu dilakukan pengujian ANOVA dua arah.
![5b](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.5b.png)

### 5c Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)!

```R
dataGTL_summary <- group_by(DataGTL, Glass, Temp) %>% summarise(mean=mean(Light), sd=sd(Light)) %>%
                            arrange(desc(mean))
```
![5c](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.5c.png)
### 5d Lakukan uji Tukey!
```R
tukeyTest <- TukeyHSD(anova)
```
![5d](https://github.com/bosbonta/P2_Probstat_F_5025201182/blob/main/screenshot/pic.5d.png)

### 5e Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey.
```R
tukeyCLD <- multcompLetters4(anova, tukeyTest)
```

