densityGain<-function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
gainf<-getCapitalGainMonth(ticker, from, to);
x <- gainf$Value;
h<-hist(x, breaks=10, col="red", xlab="Répartition des Variations",
   main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2) }
