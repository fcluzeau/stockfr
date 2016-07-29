getPortefeuilleValue<-function( from = "2013-01-01", to=Sys.time()){
action<-getPortefeuille()[1,];
nombre<-getPortefeuille()[2,];
m<-dim(yahoodata(action[1], from, to))[1];
myporte<-matrix( nrow=m , ncol=2);

for(i in 1:length(action)){
mydata <- yahoodata(action[i], from, to);
for(j in 1:dim(mydata)[1]){
myporte[j,2]<-as.numeric(mydata$Close[j]);
myporte[j,2]<-myporte[j,2]*as.numeric(nombre[i]);
}
}

myporte[,1]<-mydata$Date;
colnames(myporte)<-c("Date","Close");
myporte<-data.frame(myporte)
num<-dim(myporte)[1]
  ase1 <- myporte[1,2];
  ase2<- myporte[num,2];
  gain<- (ase1-ase2)/ase2;
  gain<-round(gain,5);


qplot(Date, Close, data = mydata, geom = c("line", "smooth"), xlab=paste("Gain du Capital:",gain,"%"))
}
