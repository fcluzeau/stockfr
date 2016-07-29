getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
action<-c("ACA.PA","MC.PA");
nombre<-c(2,3);
portefeuille<-matrix(c(action,nombre), ncol=2, nrow=2, byrow=T);
mydata<-matrix(nrow=dim(yahoodata(portefeuille[1,1], from, to))[1], ncol=length(action));
for(i in 1:2){
mydatai<-yahoodata(portefeuille[1,i], from, to);
mydataf[,1]<-mydatai$Date
mydataf[,2]<- mydatai$Close;
for(j in 1:2){
mydata[j,2]<-mydata[j,2]+as.numeric(portefeuille[2,i])*as.numeric(mydataf[j,2]);
}
}
mydata[,1]<-mydatai$Date;
return(mydata);
}
