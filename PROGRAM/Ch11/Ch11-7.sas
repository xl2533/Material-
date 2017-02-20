data ch1107; 
input t y @@;
w=3000-y;
z=log(w/y);
cards;
0  43.65  1  109.86  2  187.21   3  312.67   4  496.58 
5  707.65  6  960.25   7  1238.75  8  1560.00  9  1824.29
10  2199.00  11  2438.89  12  2737.71
;
proc reg;
model z=t;
run;
proc nlin method=gauss;
parms b=3000 to 3265 by 50  a=44.8463 to 64 by 5  k=0.4941 to 0.53 by 0.01;
temp=1+a*exp(-k*t);
model y=b/(1+a*exp(-k*t));
der.b=1/temp;
der.a=-exp(-k*t)*b/temp**2;
der.k=exp(-k*t)*b*a*t/temp**2;
run;
