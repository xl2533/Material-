data ch606; 
input beishu@@; 
cards; 
100 200 400 400 400 400 800 1600 1600 1600 3200 
;
RUN; 
proc univariate plot;
var beishu; 
run;


