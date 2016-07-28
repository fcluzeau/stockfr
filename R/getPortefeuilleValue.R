getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
ticker=getPortefeuille();
mydata<-vector("numeric", dim(yahoodata(ticker[1,1], from, to))[1]);
for(i in 1:(dim(ticker))){
mydatai<-yahoodata(ticker[1,i], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
mydata[,1]<-mydat[,1]+as.numeric(ticker[2,i])*as.numeric(mydatai[,2]);
}

return(mydata);
}
