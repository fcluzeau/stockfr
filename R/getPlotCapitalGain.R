
getPlotCapitalGain<- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
mydata <- getCapitalGainMonth(ticker, from, to);
d=as.data.frame(mydata);
qplot(Date, Value, data=d, geom = c("line", "smooth")) 
}
