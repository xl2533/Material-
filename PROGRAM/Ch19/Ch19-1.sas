data Example1 ;
do i=1 to 1000;
 x= RAND('uniform'); 
 y=(b-a)*x+a;  
 output;
end ;
proc print;
run;
data Example1 ;
seed = 12345 ;
do i=1 to 1000 ;
 x=RANUNI(seed) ; 
 y=(b-a)*x+a;  
 output ;
end ;
proc print;
run;