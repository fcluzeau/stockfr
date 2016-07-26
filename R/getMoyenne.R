getMoyenne <- function(ticker="GOOG",rom = "2013-01-01", to=Sys.time()){
    url <- paste('http://download.finance.yahoo.com/d/quotes.csv?s=',ticker,'&f=sl1d1t1n&e=.csv',sep="");
    mydata <- read.csv(url,header=FALSE);
    names(mydata) <- c("Symbol","Value","Date","Time","Name");
    mydata$Value<-mean(mydata$Value);
    return(mydata);
}
