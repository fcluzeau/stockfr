plotDensity <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  if(ticker!="portefeuille"){mydata <- yahoodata(ticker, from, to);
  names(mydata) <- c("Symbol","Value","Date","Time","Name");
 d <- density(mydata$Value)
plot(d, main="Répartition des valeurs")
polygon(d, col="red", border="blue") 
}
else{plotDensityPortefeuilleByShare(from, to)}
}

