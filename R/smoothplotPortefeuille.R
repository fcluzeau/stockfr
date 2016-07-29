smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);

 ggplot(mydata, aes(x=mydata[,1], y=mydata[,2]))
}
