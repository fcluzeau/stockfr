#' Smooth Plot
#' 
#' Creates a smooth plot of stock data.
#' 
#' @param ticker stock ticker symbol. E.g. "GOOG".
#' @param from start date. Either string or date object.
#' @param to end date. Either string or date object.
#' @return ggplot object.
#> geom_smooth: method="auto" and size of largest group is <1000, so using loess. Use 'method = x' to change the smoothing method.
#' @export
smoothplot <- function(ticker = "GOOG", from = "2013-01-01", to=Sys.time()){
  if(ticker!="portefeuille"){mydata <- yahoodata(ticker, from, to);
  qplot(Date, Close, data = mydata, geom = c("line", "smooth"));  
}
else{
action<-c("ACA.PA","MC.PA");
nombre<-c(2,3);
portefeuille<-c("action","nombre");
for(i in 1:2){
mydata<-yahoodata(portefeuille[1,i], from, to);
qplot(Date, nombre[i]*Close, data = mydata, geom = c("line", "smooth"));
}
}
}
