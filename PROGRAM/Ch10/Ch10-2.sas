data a1;
input x@@;
cards;
0.497  0.506  0.518  0.524  0.498  0.511  0.520  0.515  0.512
;
proc means ;
output out=a12 mean=mean n=n;
data a13;
set a12;
alpha=0.05;
z=abs((mean-0.5)*sqrt(n)/0.015);
za=probit(1-alpha/2);
run;
proc print data=a13;
 var z za;
run;
























