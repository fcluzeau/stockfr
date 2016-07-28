smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);

plot(mydata$Date, mydata$Value, geom = c("line", "smooth"));

}
