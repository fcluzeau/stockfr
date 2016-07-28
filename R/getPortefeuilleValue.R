getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
ticker=getPortefeuille();
mydata<-matrix( nrow=dim(yahoodata(ticker[1,1], from, to))[1], ncol=4);
for(i in 1:(dim(ticker))[1]){
mydatai<-yahoodata(ticker[1,i], from, to);
colnames(mydatai)<-c("Symbol","Value","Date","Time","Name");
for(j in 1:(dim(ticker))[1]){
mydata[j,1]<-mydata[j,1]+as.numeric(ticker[2,i])*as.numeric(mydatai[j,2]);
}
}
mydata[,2]<-mydatai[,2];
mydata[,3]<-mydatai[,3];
mydata[,4]<-mydatai[,4];
colnames(mydata)<-c("Value","Date","Time","Name");
mydata<-as.data.frame(mydata)
return(mydata);
}
