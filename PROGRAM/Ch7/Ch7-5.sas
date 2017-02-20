data b.blood;
input x@@;
cards;
163 219 313 169 281 264 124 94 224 145 285 107 269 416 662 249 136 100 199 407 94 235 120 128  560 80 217 252 165 107
;
RUN;
proc print;
run;
proc univariate normal plot;
var x;
run; 












