getPortefeuilleValue<-function(ticker=c(a1,"GOOG",a2,"ACA.PA"),from="2013-01-01", to=Sys.time()){

mydata<-matrix(ncol=(dim(ticker)/2+2),nrow=
mydatf<-
for(i in 1:(dim(ticker)/2)){
mydatai<-yahoodata(ticker[i*2], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
mydata<-matrix(ncol=(dim(ticker)/2+2),nrow=dim(mydatai)[1]);
mydatf<-matrix(ncol=3,nrow=dim(mydatai)[1]);
mydata[,i]<-ticker[(i-1)*2+1]*mydatai[,2];
}
mydata[,(dim(ticker)/2+1)]<-mydatai[,3];
mydata[,(dim(ticker)/2+2)]<-mydatai[,4];

for(i in 1:(dim(ticker)/2)){
mydataf[,1]<-mydataf[,1]+mydata[,i];}

mydataf[,2]<-mydata[,(dim(ticker)/2+1)];
mydataf[,3]<-mydata[,(dim(ticker)/2+2)];
mydatf<-as.data.frame(gainf);
colnames(mydataf)<-c("Value","Date","Time");
return(mydataf);
}
