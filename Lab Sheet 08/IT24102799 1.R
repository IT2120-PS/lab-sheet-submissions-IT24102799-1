setwd("C:\\Users\\damim\\OneDrive\\Desktop\\PS\\IT24102799")

data<-read.table("Data - Lab 8.txt",header = TRUE)
fix(data)
attach(data)

popmn<-mean(Nicotine)
popvar<-var(Nicotine)

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)


samplemean<-mean(s.means)
samplevar<-var(s.means)

popmn
samplemean

truevar=popvar/5
samplevar

