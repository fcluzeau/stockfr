smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
x<-1:dim(mydata)[1];
y<-mydata$Value
plot(x,y)
}
