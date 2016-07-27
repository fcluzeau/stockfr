
getCapitalGainMonth <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
mydata <- yahoodata(ticker, from, to);
names(mydata) <- c("Symbol","Value","Date","Time","Name");
num<-dim(mydata)[1];
ave<-vector("numeric", num-2);
gain<-matrix(nrow=num-2);
ate<-vector("numeric", num-2);
for(i in 1:num-1){
ave[i]<-mydata[i+1,2]
ate[i]<-mydata[i+1,3]
gain[i,1]<- (ave[i]-ave[i+1])/ave[i];
gain[i,2]<-ate[i];
}
gain=as.data.frame(gain);
colnames(gain)<-c("Value","Date");
return(gain);
}
