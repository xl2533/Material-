data ch70401;
input x@@;
cards;
85  86  78  90  96  82  80  74
;
proc means;
run;
data ch70402;
input x@@;
cards;
1.1  1.2  1.6  2.3  1.5  1.4
;
proc means  skewness  kurtosis;
run;
data ch70403;
input x@@;
cards;
1  2  3  4  5  7  18
;
proc means  uss  css   maxdec=3;
run;
data ch70404;
input x@@;
cards;
5  6  8  9  6  2  8  4
;
proc means  cv   maxdec=3;      
run;
data ch70405;
input x@@;
cards;
100  105  110  108  120  140  142  123  156  178  156  180  120  110  146
;
proc means  mean   alpha=0.05  clm  maxdec=3; 
run;
data ch70406;
input x@@;
cards;
3.1  3.6  3.9  2.3  4.8  3.1  3.0  5.4  4.5
;
proc univariate   ;
var  x; 
run;











