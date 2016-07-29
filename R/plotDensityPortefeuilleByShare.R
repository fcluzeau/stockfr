plotDensityPortefeuilleByShare<-function(ticker=c("GOOG","ACA.PA"),from="2013-01-01", to=Sys.time()){
action<-ticker;
gain<-numeric(length(action));
for(i in 1:(length(action))){
ticke<-action[i]
gaini<-getCapitalGain(ticke, from, to)
gain[i]<-round(gaini,5);
}


plot(density(gain))

}




