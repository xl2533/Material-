data ratio; 
input case$ ratio@@; 
cards; 
a1 0.69 a2 0.57 a3 0.71 a4 0.74 a5 1.06 a6 0.85 a7 0.80 
; 
goptions reset=all ; 
proc format; 
value $ss a1='���Ĳ�' a2='���Ĳ�' a3='��Ѫѹ' a4='���Ĳ�' a5='���Ĳ�' 
a6='��ɽ��' a7='����'; 
proc gchart; 
vbar case/sumvar=ratio; 
format case $ss.; 
pattern v=x5 c=gray; 
run;





