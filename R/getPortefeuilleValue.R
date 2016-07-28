getPortefeuilleValue<-function(from="2013-01-01", to=Sys.time()){
ticker=getPortefeuille();
mydata<-vector("numeric", dim(yahoodata(ticker[1,1], from, to))[1]);
for(i in 1:(dim(ticker))[1]){
mydatai<-yahoodata(ticker[1,i], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
for(j in 1:(dim(ticker))[1]){
mydata[j]<-mydata[j]+as.numeric(ticker[2,i])*as.numeric(mydatai[j,2]);
}
}

return(mydata);
}
