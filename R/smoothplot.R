#' Smooth Plot
#' 
#' Creates a smooth plot of stock data.
#' 
#' @param ticker stock ticker symbol. E.g. "GOOG".
#' @param from start date. Either string or date object.
#' @param to end date. Either string or date object.
#' @return ggplot object.
#> geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
#' @export
smoothplot <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  if(ticker!="portefeuille"){mydata <- yahoodata(ticker, from, to);
  qplot(Date, Close, data = mydata, geom = c("line", "smooth"));  
}
else{
action<-c("ACA.PA","MC.PA");


mydata<-yahoodata("ACA.PA", from, to);
 
 x <- mydata$Close;
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
   main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
g<-plot(mydata$Date, mydata$Close, main="Scatterplot of wt vs. mpg")

mydata<-yahoodata("MC.PA", from, to);
 x <- mydata$Close;
r<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon",
   main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
t<-plot(mydata$Date, mydata$Close, main="Scatterplot of wt vs. mpg")


attach()
par(mfrow=c(2,2))
g
h
r
t
}
}
}
}
