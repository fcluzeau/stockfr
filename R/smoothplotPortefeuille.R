smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
colnames(mydata)<-c("Date","Close");
mydata<-data.frame(mydata);
qplot(Date, Close, data = mydata, geom = c("line", "smooth"));
}
