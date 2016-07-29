smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
x<-1:length(mydata);
points(x, mydata, pch=16, col="green")
}
