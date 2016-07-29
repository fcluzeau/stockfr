getPortefeuilleValue<-function( from = "2013-01-01", to=Sys.time()){
action<-getPortefeuille()[1,];
nombre<-getPortefeuille()[2,];
m<-yahoodata(action[1], from, to)[1];
myporte<-matrix( nrow=m , ncol=2);

for(i in 1:length(action)){
mydata <- yahoodata(action[i], from, to);
for(j in 1:dim(mydata)[1]){
myporte[j,2]<-nombre[i]*mydata$Close[j];
}
}

myporte[,1]<-mydata$Date;
colnames(myporte)<-c("Date","Close");
myporte<-data.frame(myporte)

qplot(Date, Close, data = mydata, geom = c("line", "smooth"));  
}
