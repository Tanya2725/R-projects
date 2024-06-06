data<-c(75,60,54,59,86,65,63,80,90,72,66,85,100,78,72,93)
length(data)
year=rep(1:4,each=4)
quarter=rep(1:4,each=1)
df=data.frame(year,quarter,data)
df
install.packages("TTR")
library("TTR")
ma<-SMA(df$data,n=4)
ma
y<-ma[-c(1,2,3)]
y
cma<-SMA(y,n=2)
cma
cent<-cma[-1]
cent
data.new<-data[-c(1,2,15,16)]
data.new

SI<-data.new/cent*100
SI

now<-c(0,0,SI,0,0)
now

mat<-matrix(now,nrow=4,ncol=4,byrow=TRUE)
mat

q1<-(sum(mat[,1]))/3
q1
q2<-(sum(mat[,2]))/3
q2
q3<-(sum(mat[,3]))/3
q3
q4<-(sum(mat[,4]))/3
q4

s<-sum(q1+q2+q3+q4)
s
k=400/s
k

si1<-c(q1,q2,q3,q4)
si1

si.f<-si1*k
si.f
sum(si.f)

