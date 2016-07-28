smoothPlotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(ticker,from,to);
qplot(Date, Value, data = mydata, geom = c("line", "smooth"));
}
