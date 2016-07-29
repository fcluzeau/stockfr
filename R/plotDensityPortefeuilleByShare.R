plotDensityPortefeuilleByShare<-function(from="2013-01-01", to=Sys.time()){

action<-getPortefeuille();

gain<-numeric(length(action));
for(i in 1:(length(action))){
ticke<-action[i]
gaini<-getCapitalGain(ticke, from, to)
gain[i]<-round(gaini,5);
}

d<-density(gain)
plot(d, main="Répartition des valeurs")
polygon(d, col="red", border="blue")
}




