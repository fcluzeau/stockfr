
getPlotCapitalGain<- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
mydata <- getCapitalGainMonth(ticker, from, to);
names(mydata) <- c("Value","Date");
qplot(Date, Value, data = mydata, geom = c("line", "smooth")); 
}
