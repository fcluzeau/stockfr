getMoyenneGeometrique<-function(vect=numeric(10)){
res<-1
for(i in 1:length(vect)){
res=res*(1+vect[i])^(1/(length(vect)));
}
return(res-1)
}
