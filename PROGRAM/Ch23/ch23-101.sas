Proc iml;
X={1 1 1,
1 2 4,
1 3 9,
1 4 16,
1 5 25};
Y={1,5,9,23,26};
B=inv(t(x)*x)*t(x)*y;  
Yhat=x*b;           
R=y-yhat;             
Sse=ssq(r);       
Dfe=nrow(x)-ncol(x);  
Start regress;     
Xpxi=inv(t(x)*x);   
Beta=xpxi*t(x)*y;   
Yhat=x*beta;        
Resid=y-yhat;        
Sse=ssq(resid);      
N=nrow(x);           
Dfe=nrow(x)-ncol(x);  
Mse=sse/dfe;            
Cssy=ssq(y-sum(y)/n);      
Rsquare=(cssy-sse)/cssy;
Print,'regression results';
Sse dfe mse rsquare;
Stdb=sqrt(vecdiag(xpxi)*mse);   
T=beta/stdb;                   
Prob=1-probf(t#t,1,dfe);       
Print,'parameters estimates',,
Beta stdb t prob;
Print,y yhat resid;
Finish regress;

reset noprint;
run regress;
Reset print;
Covb=xpxi*mse;
Xy=x1||resid;

