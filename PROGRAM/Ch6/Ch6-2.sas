data ratio; 
input case$ ratio@@; 
cards; 
a1 0.69 a2 0.57 a3 0.71 a4 0.74 a5 1.06 a6 0.85 a7 0.80 
; 
goptions reset=all ; 
proc format; 
value $ss a1='肺心病' a2='风心病' a3='高血压' a4='冠心病' a5='先心病' 
a6='克山病' a7='其它'; 
proc gchart; 
vbar case/sumvar=ratio; 
format case $ss.; 
pattern v=x5 c=gray; 
run;





