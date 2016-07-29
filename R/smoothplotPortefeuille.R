smoothplotPortefeuille<- function(from = "2013-01-01", to=Sys.time()){
mydata<-getPortefeuilleValue(from,to);

 ggplot(mydata aes(x=mydata[,1], y=mydata[,2])) + 
 + geom_point(shape=1) + # Use hollow circles 
 + geom_smooth(method=lm) + # Add linear regression line  
 + theme(axis.text=element_text(size=1))  
}
