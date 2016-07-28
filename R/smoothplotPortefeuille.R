smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);
qplot(seq_along(dim(mydata)), mydata.Length);
}
