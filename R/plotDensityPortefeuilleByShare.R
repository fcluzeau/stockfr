plotDensityPortefeuilleByShare<-function(ticker=c("GOOG","ACA.PA"),from="2013-01-01", to=Sys.time()){
action<-ticker;
gain<-numeric(length(action));
for(i in 1:(length(action))){
mydatai<-yahoodata(action[i], from, to);
names(mydatai)<-c("Symbol","Value","Date","Time","Name");
num<-dim(mydatai)[1]
ase1 <- mydatai[1,2];
ase2<- mydatai[num,2];
gai<- (ase1-ase2)/ase2;
gain[i]<-round(gain,5);
}

gainf<-data.frame(gain)
d <- density(gainf)
plot(d, main="Répartition des valeurs")
polygon(d, col="red", border="blue") 
}




