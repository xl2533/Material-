data tmp;
a=compound(1000,.,0.0125,20);
b=compound(1000,2000,.,20);
put a b;
run;
proc print;
run;
