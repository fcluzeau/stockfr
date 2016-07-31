densityGain<-function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
gainf<-getCapitalGainMonth(ticker, from, to);
gainf<-as.numeric(gainf);
moyenne<-mean(gainf)
moyenne<-round(moyenne,5);
moyennegeo<-round(getMoyenneGeometrique(gainf),5);
x <- gainf;
h<-hist(x, breaks=10, col="red", xlab=paste("Variations mensuelles en %; moyenne arithmétique:",moyenne,"%; moyenne géométrique:",moyennegeo,"%"),
   main="Histogramme de la Répartition des Variations Mensuelle")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
abline(h=0,v=moyenne,col="black");
}
