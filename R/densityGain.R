densityGain<-function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
gainf<-getCapitalGainMonth(ticker, from, to);
moyen<-round(getMoyenneGeometrique(gainf)/100 ,5);
moyennear<-round(mean(gainf$Value),5);
x <- gainf$Value;
h<-hist(x, breaks=10, col="red", xlab=paste("Variations mensuelles en %; moyenne arithmétique gain mensuelle:",moyennear,"%"),
   main="Histogramme de la Répartition des Variations Mensuelle")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
abline(h=0,v=moyennear,col="black");
}
