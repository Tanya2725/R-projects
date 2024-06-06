year<-seq(1992,2004)
year
bank_clearance<-c(53,79,76,66,69,94,105,87,79,104,97,92,101)
df<-data.frame(year,bank_clearance)
df
str(df)

p1<-df[1:7,]
p1
p2<-df[7:13,]
p2

#mean
m1<-mean(p1$bank_clearance)
m1
m2<-mean(p2$bank_clearance)
m2

plot(year, bank_clearance, xlab="Year", ylab="Bank Clearance", main="Time series analysis for bank clearance",col="turquoise",lty=29, type="l")
lines(x=c(1995,2001), y=c(m1,m2),lty=1)
