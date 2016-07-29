plotDensityPortefeuilleByShare<-function(ticker=c("GOOG","ACA.PA"),from="2013-01-01", to=Sys.time()){

gain<-numeric(length(ticker));
for(i in 1:(length(ticker))){
mydatai<-yahoodata(action[i], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
num<-dim(mydatai)[1]
ase1 <- mydatai[1,2];
ase2<- mydatai[num,2];
gai<- (ase1-ase2)/ase2;
gain[i]<-round(gain,5);
}



h<-hist(gain, breaks=10, col="red", xlab="Variations en %",
main="Histogramme de la Répartition des Variations des Actions du Portefeuille")
xfit<-seq(min(gain),max(gain),length=40)
yfit<-dnorm(xfit,mean=mean(gain),sd=sd(gain))
yfit <- yfit*diff(h$mids[1:2])*length(gain)
lines(xfit, yfit, col="blue", lwd=2)
}




