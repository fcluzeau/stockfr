getSkewness<- function(ticker="GOOG",from = "2013-01-01", to=Sys.time()){
     mydata <- yahoodata(ticker, from, to);
    names(mydata) <- c("Symbol","Value","Date","Time","Name");
    skewn<-skewness(mydata$Value);
    return(skewn);
}
