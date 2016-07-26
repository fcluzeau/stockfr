compare<-function(ticker="GOOG",rom = "2013-01-01", to=Sys.time()){
getcur<-getcurrent(ticker="GOOG",rom = "2013-01-01", to=Sys.time())
mydata <- yahoodata(ticker, from, to);
if(getcur$Value<mydata$Close){ fill="green"}; 
else{fill="red"};
ggplot(data = mydata, ymin=getcur, aes(Date, ymax=High)) + geom_ribbon(color="black",fill, alpha=0.5) + ylim(range(mydata$Close));
}
