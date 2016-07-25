

tendance <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  mydata <- yahoodata(ticker, from, to);
qplot(Date, Close, data = mydata, geom = c("point", "smooth"), span = 0.2)
}
