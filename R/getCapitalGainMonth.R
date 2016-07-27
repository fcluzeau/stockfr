
getCapitalGainMonth <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
mydata <- yahoodata(ticker, from, to);
names(mydata) <- c("Symbol","Value","Date","Time","Name");
num<-dim(mydata)[1];
gain<-matrix(ncol=2,nrow=num-1);
for(i in 1:num-1){
gain[i,1]<- ((mydata[i,2]-mydata[i+1,2])/mydata[i,2]);
gain[i,2]<-mydata[i+1,3];}
gain<-as.data.frame(gain);
colnames(gain)<-c("Value","Date");
return(gain);
}
