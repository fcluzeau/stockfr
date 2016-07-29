smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
x<-1:length(mydata);
plot(x,mydata, xlab="x axis", ylab="y axis", main="my plot", ylim=c(min(mydata),max(mydata)), xlim=c(1,length(mydata)))+
geom_point() 
}
