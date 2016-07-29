plotDensityPortefeuilleByShare<-function(from="2013-01-01", to=Sys.time()){

action<-getPortefeuille()[1,];

gain<-numeric(length(action));
for(i in 1:(length(action))){
ticke<-action[i]
gaini<-100*getCapitalGain(ticke, from, to)
gain[i]<-round(gaini,5);
}
 kurt<-kurtosis(gain);
    kurt<-round(kurt,5);
    var<-var(gain);
var<-round(var,5);
 moyenne<-mean(gain);
    moyenne<-round(moyenne,5);
skewn<-skewness(gain);
    skewn<-round(skewn,5);


x <- gain;
h<-hist(x, breaks=10, col="red", xlab=paste("Variations mensuelles en %",moyenne,"; variance:",var,"; skewness", skewn,"; kurtosis:", kurt),
   main="Histogramme de la Répartition des Variations Mensuelle")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2) 
abline(h=0,v=moyenne,col="black");
}




