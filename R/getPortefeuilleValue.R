getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
ticker=getPortefeuille();
mydata<-matrix( nrow=dim(yahoodata(ticker[1,1], from, to))[1], ncol=5);
for(i in 1:(dim(ticker))[1]){
mydatai<-yahoodata(ticker[1,i], from, to);
colnames(mydatai)<-c("Symbol","Value","Date","Time","Name");
for(j in 1:(dim(ticker))[1]){
mydata[j,2]<-mydata[j,2]+as.numeric(ticker[2,i])*as.numeric(mydatai[j,2]);
}
}
mydata[,3]<-mydatai[,3];
mydata[,4]<-mydatai[,4];
mydata[,5]<-mydatai[,5];
mydata[,1]<-mydatai[,1];
colnames(mydata)<-c("Symbol","Value","Date","Time","Name");
mydata<-as.data.frame(mydata)
return(mydata);
}
