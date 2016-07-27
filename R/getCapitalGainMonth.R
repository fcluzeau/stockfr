
getCapitalGainMonth <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
mydata <- yahoodata(ticker, from, to);
names(mydata) <- c("Symbol","Value","Date","Time","Name");
num<-dim(mydata)[1]
l<-0;
j<-1;
ave<-vector("numeric", floor(num/29));
gain<-matrix(nrow=floor(num/29),ncol=2);
ate<-vector("numeric", floor(num/29));
for(i in 1:floor(num/29)){
ave[i]<-mydata[i*29,2]
ate[i]<-mydata[i*29,3]
gain[i,1]<- (ave[i]-ave[i+1])/ave[i];
gain[i,2]<-ate[i]
}

colnames(gain)<-c("Value","Date");
return(gain);
}
