plotDensity <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  mydata <- yahoodata(ticker, from, to);
  
 d <- density(mydata$Value)
plot(d, main="Répartition des valeurs")
polygon(d, col="red", border="blue") 
}

