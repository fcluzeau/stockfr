smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
qplot(mydata$Date, mydata$Value,  geom = c("line", "smooth"));
}
