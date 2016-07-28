plotDensityPortefeuilleByShare<-function(ticker=c(a1,"GOOG",a2,"ACA.PA"),from="2013-01-01", to=Sys.time()){

mydata<-matrix(ncol=(dim(ticker)/2),nrow=dim(yahoodata("GOOG", from, to))[1]);
gain<-vector("numeric", (dim(ticker)/2))
for(i in 1:(dim(ticker)/2)){
mydatai<-yahoodata(ticker[i*2], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
mydata[,i]<-ticker[(i-1)*2+1]*mydatai[,2];
}

for(i in 1:(dim(ticker)/2)){
ase1 <- mydata[1,i];
ase2<- mydata[num,i];
gain[i]<-round((ase1-ase2)/ase2 , 5);
}

h<-hist(gain, breaks=10, col="red", xlab="Variations en %",
main="Histogramme de la Répartition des Variations des Actions du Portefeuille")
xfit<-seq(min(gain),max(gain),length=40)
yfit<-dnorm(xfit,mean=mean(gain),sd=sd(gain))
yfit <- yfit*diff(h$mids[1:2])*length(gain)
lines(xfit, yfit, col="blue", lwd=2) }



}
