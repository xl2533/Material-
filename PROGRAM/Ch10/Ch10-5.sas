data a5;
input x y@@;
d=x-y;
cards;
113  140  150  138  150  140  135  135  128  135  100  120  110  147  120  114  130  138  123  120
;
proc means mean std t prt;
var d;
run;























