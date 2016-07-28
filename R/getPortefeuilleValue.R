getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
ticker=getPortefeuille();
mydata<-matrix(ncol=(dim(ticker)[1]+2),nrow=dim(yahoodata("ACA.PA", from, to))[1]);
mydataf<-matrix(ncol=3, nrow=dim(yahoodata("ACA.PA", from, to))[1]);
for(i in 1:(dim(ticker))){
mydatai<-yahoodata(ticker[1,i], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
mydata[,i]<-as.numeric(ticker[2,i])*as.numeric(mydatai[,2]);
}
mydata[,(dim(ticker)+1)]<-mydatai[,3];
mydata[,(dim(ticker)+2)]<-mydatai[,4];

for(i in 1:(dim(ticker))){
mydataf[,1]<-mydataf[,1]+mydata[,i];}

mydataf[,2]<-mydata[,(dim(ticker)+1)];
mydataf[,3]<-mydata[,(dim(ticker)+2)];
mydataf<-as.data.frame(mydataf);
colnames(mydataf)<-c("Value","Date","Time");
return(mydataf);
}
