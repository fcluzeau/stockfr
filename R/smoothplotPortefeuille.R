smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);

 qplot(Date, Value, data = mydata, geom = c("line", "smooth")); 
}
