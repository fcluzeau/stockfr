getMoyenne <- function(ticker="GOOG",rom = "2013-01-01", to=Sys.time()){
     mydata <- yahoodata(ticker, from, to);
    names(mydata) <- c("Symbol","Value","Date","Time","Name");
    moyenne<-mean(mydata$Value);
    return(moyenne);
}
