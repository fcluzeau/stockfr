max <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  mydata <- yahoodata(ticker, from, to);
  qplot(Date, ymax=High, data = mydata, geom = c("line", "smooth")); 
}

min <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  mydata <- yahoodata(ticker, from, to);
  qplot(Date, ymin=Low, data = mydata, geom = c("line", "smooth")); 
}
