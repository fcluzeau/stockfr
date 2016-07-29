getCapitalGain <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  mydata <- yahoodata(ticker, from, to);
  names(mydata) <- c("Symbol","Value","Date","Time","Name");
  num<-dim(mydata)[1]
  ase1 <- mydata[1,2];
  ase2<- mydata[num,2];
  gain<- (ase1-ase2)/ase2;
  gain<-round(100*gain,5);
  return(gain);
}
