smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
y<-getPortefeuilleValue(from,to);
x<-1:length(y);
plot(x, y, pch=2, col="red")
}
