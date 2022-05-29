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