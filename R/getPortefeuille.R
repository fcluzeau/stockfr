getPortefeuille<-function(){
action<-c("AC.PA","ACA.PA","AI.PA","AIR.PA","BN.PA","BNP.PA","CA.PA","CAP.PA","CS.PA","DG.PA","EI.PA","EN.PA","ENGI.PA","FP.PA","FR.PA","GLE.PA","KER.PA","LHN.PA","LI.PA","LR.PA","MC.PA","ML.PA");
nombre<-c(1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15,16,17,18,19,20,21,22); 
portefeuille<-matrix(nrow=2, ncol=length(action))
portefeuille[1,]<-action
portefeuille[2,]<-nombre
return(portefeuille);
}
