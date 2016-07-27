getCapitalGainMonth <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  mydata <- yahoodata(ticker, from, to);
  names(mydata) <- c("Symbol","Value","Date","Time","Name");
  num<-dim(mydata)[1]
  l<-0;
  ave<-vector("numeric", floor(num/29));
  ate<-vector("numeric", floor(num/29));
   for( i in 1:num){
   if(l==1%%29){
   ave[j]<-mydata[i,2]
   ate[j]<-mydata[i,3]}
   l<-l+1}
   
   for(i in 1:floor(num/29)){
  gain[i,1]<- (ave[i]-ave[i+1])/ave[i];
  gain[i,2]<-ate[i];
  return(gain);
}
