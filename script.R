#1
data1=data.frame(responden=c(1,2,3,4,5,6,7,8,9),
                 X=c(78,75,67,77,70,72,78,74,77), 
                 Y=c(100,95,70,90,90,90,89,90,100))

data1
sd(data1 $Y - data1 $X)
t.test (data1 $Y , data1 $X , paired=TRUE)

#2
install.packages("BSDA")
library(BSDA)

zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
          alternative = "less", mu = 20000,
          conf.level = 0.95)

#3
library(BSDA)
install.packages("mosaic")
library(mosaic)
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y=2.79, s.y = 1.32, n.y = 27, 
          alternative = "two.sided", mu = 0, var.equal = TRUE,
          conf.level = 0.95)
plotDist(dist ='t', df = 2, col="red")
qt(p = 0.05, df = 2, lower.tail = FALSE)

n_bandung <- 19
n_bali <- 27
mean_bandung <- 3.64
mean_bali <- 2.79
dp_bandung <- 1.67
dp_bali <- 1.32
df <- 2
alpha <- 0.05
sp <- (((n_bandung-1)*dp_bandung)+ ((n_bali-1)*dp_bali))/(n_bali + n_bandung - df)
T <- (n_bandung - n_bali)/(sp*((1/n_bandung) + (1/n_bali)))

#4
DataKucingITS <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"),header = TRUE, check.names = TRUE)
byGroup <- split(DataKucingITS, DataKucingITS$Group)
grup1 <- byGroup$`1`
grup2 <- byGroup$`2`
grup3 <- byGroup$`3`
qqnorm(grup1$Length,main = "Grup1")
qqnorm(grup2$Length,main = "Grup2")
qqnorm(grup3$Length,main = "Grup3")

bartlett.test(DataKucingITS$Length, DataKucingITS$Group)

model1 <- lm(DataKucingITS$Length~DataKucingITS$Group)
summary(model1)

av <- aov(Length ~ factor(Group), data = DataKucingITS)
TukeyHSD(av)

library(ggplot2)
ggplot(DataKucingITS, aes(x = Group, y = Length)) + 
  geom_boxplot(fill = "blue", colour = "black")  + 
  scale_x_discrete() + xlab("Group") + ylab("Length")

#5
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
DataGTL <- read_csv("https://drive.google.com/u/0/uc?id=1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ&export=download")
qplot(x = Temp, y = Light, geom = "jitter", data = DataGTL) +
  facet_grid(.~Glass, labeller = label_both)

GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

dataGTL_summary <- group_by(DataGTL, Glass, Temp) %>% summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
dataGTL_summary

tukeyTest <- TukeyHSD(anova)

tukeyCLD <- multcompLetters4(anova, tukeyTest)
