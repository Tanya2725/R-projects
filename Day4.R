year<-1966:1982
production<-c(19.3,20.9,17.8,16.1,17.6,17.8,18.3,17.3,21.4,19.3,18.1,19.5,19.2,22.2,20.9,21.5,21.9)
a<-data.frame(year,production)
a
m<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
for(i in 1:16)
{
 m[i]<-(production[i]+production[i+1])/2
}
m
length(m)
lines(x<-seq(1966.5,1981.5),y=m,col="blue")

install.packages("TTR")
library(TTR)
#SMA--Semi moving average
ma<-SMA(a$production,n=2)
ma
plot(year,production,xlab="Year",ylab="Production",main="Moving averages",type="l",lty=1,col="red")
lines(x=year,y=ma,col="blue",lty=2)
#EMA--Exponential moving average
#WMA--Weighted moving average
mw<-WMA(production,n=2)
mw
me<-EMA(production,n=2)
me
lines(x=year,y=mw,col="green",lty=1)
lines(x=year,y=me,col="magenta",lty=1)
legend(x=1979,y=19,legend=c("Data","SMA","WMA","EMA"),col=c("red","blue","green","magenta"),lty=c(1,2,1,1),bty="o")
