plotDensityPortefeuilleByShare<-function(from="2013-01-01", to=Sys.time()){

action<-getPortefeuille();

gain<-numeric(length(action));
for(i in 1:(length(action))){
ticke<-action[i]
gaini<-getCapitalGain(ticke, from, to)
gain[i]<-round(gaini,5);
}


x <- gain;
h<-hist(x, breaks=10, col="red", xlab="Variations mensuelles en %",
   main="Histogramme de la Répartition des Variations Mensuelle")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2) 
}




