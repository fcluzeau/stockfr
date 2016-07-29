getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
action<-c("ACA.PA","MC.PA");
nombre<-c(2,3);
portefeuille<-matrix(c(action,nombre), ncol=2, nrow=2, byrow=T);
mydata<-vector(numeric, nrow=dim(yahoodata(portefeuille[1,1], from, to))[1]);
for(i in 1:2){
mydatai<-yahoodata(portefeuille[1,i], from, to);
colnames(mydatai)<-c("Symbol","Value","Date","Time","Name");
for(j in 1:2){
mydata[j,1]<-mydata[j,1]+as.numeric(portefeuille[2,i])*as.numeric(mydatai[j,2]);
}
}

return(mydata);
}
