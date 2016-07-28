getPortefeuille<-function(){
action<-c("ACA.PA","MC.PA");
nombre<-c(2,3);
portefeuille<-matrix(c(action,nombre), ncol=2, nrow=2, byrow=T);

return(portefeuille);
}
