smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
ggplot(mydata, aes(x = dim(mydata)))

}
