smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);

plot(mydata$Date, y = range(mydata$Value, na.rm=TRUE));

}
