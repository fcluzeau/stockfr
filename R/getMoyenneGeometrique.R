getMoyenneGeometrique<-function(vect){
res<-1
rf<-1/length(vect);
for(i in 1:length(vect)){
res=res*(1+vect[i]);
}
res<-res^rf
return(res-1)
}
