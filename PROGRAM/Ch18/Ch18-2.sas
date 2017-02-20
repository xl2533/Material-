DM"LOG;CLEAR;OUTPUT;CLEAR;PROGRAM;RECALL;";
OPTION NODATE ps=55;
DATA ch1802;
TIME=_N_;
INPUT Z @@;
mdiff=z-lag12(z);
CARDS;
88157    76310    44324     48487    46752
54513    49505    51983     51357    47766 
46156    73453   117364    47157    46390
44499    49774    49543     51336    48272
50063    46823    46504     60388    59414
107648  50627    48594     49785    55092
50258    48073    51614     49956    48619
63741    82679    75913     55819    57007
54501    61492    59781     55581    55071
52687    50621    67503    142415   47421
51447    51943    53440     52117    53346
51926    49531    50065     46297    65386
77186    99552    47645     51650    54624
57616    53367    59471     59765    53538
47551    62878   113684    82514    58882
55375    52536    56902     48828    50793
51777    53745    45555     60265   128791
60171    56312    50862     51265    62369
57786    63252    55559     51756    51444
61315    93541    89519     60887    64683
59803    63400    57780     68520    57887
54559    52739    64914   133629    58170
51185    59150    54982     59175    62929
58461    63375    53734     54739    67266
149797  62476    62517     59799    55833
60503      .   .    .   .   .   .  
;
run;
PROC GPLOT;
PLOT Z *TIME;
PLOT (z  mdiff)*TIME;
symbol1 v=star c=red i=joint;
symbol2 v=star c=green i=joint;
symbol3 v=star c=blue i=joint;
RUN;
PROC ARIMA DATA=M1;
     IDENTIFY VAR=Z;
IDENTIFY VAR=Z(12);
     ESTIMATE    p=(12,24)    q=(11)   METHOD=ML PLOT;
	 FORECAST LEAD=6 OUT=OUT;
RUN;

data outold;
set out;
time=_n_;
data outold;
set outold;
where time > 126;

data outof;
input zt @@;
time=126+_n_;
cards;
58790
57240
64271
55247
53521
61977
;
data all;
merge outof outold;
id=time;
proc print data=all;
var  time zt forecast l95 u95;
run;
proc gplot data=all;
plot zt * time =1
forecast * time =2
l95      * time =3
u95      * time=3 / overlay;
run;
data errors;
set all;
mse=(zt-forecast)**2;
mae=abs(zt-forecast);
mpe=100*(zt-forecast)/zt;
mape=100*abs((zt-forecast)/zt);
proc print data=errors;
var mse mae mpe mape;
run;quit;
proc means data=errors;
var mse mae mpe mape;
output out=evalutation mean=MSE MAE MPE MAPE;
run;
proc print;
var MSE MAE MPE MAPE;
run;
dm "output;clear;log;clear;program;recall;graph;cler;";
options ps=75 nodate nonumber;
data try;
input y @@;
diff=y-lag(y);
time=_n_;
cards;
88157    76310    44324     48487    46752
54513    49505    51983     51357    47766 
46156    73453   117364    47157    46390
44499    49774    49543     51336    48272
50063    46823    46504     60388    59414
107648  50627    48594     49785    55092
50258    48073    51614     49956    48619
63741    82679    75913     55819    57007
54501    61492    59781     55581    55071
52687    50621    67503    142415   47421
51447    51943    53440     52117    53346
51926    49531    50065     46297    65386
77186    99552    47645     51650    54624
57616    53367    59471     59765    53538
47551    62878   113684    82514    58882
55375    52536    56902     48828    50793
51777    53745    45555     60265   128791
60171    56312    50862     51265    62369
57786    63252    55559     51756    51444
61315    93541    89519     60887    64683
59803    63400    57780     68520    57887
54559    52739    64914   133629    58170
51185    59150    54982     59175    62929
58461    63375    53734     54739    67266
149797  62476    62517     59799    55833
60503    
;
/*58790
57240
64271
55247
53521
61977*/
;
symbol1 i=joint v="L" c=red;
symbol2 i=join v="U" c=cyan;
symbol3 i=join v="R" c=blue;
symbol4 i=join v="F" c=green;
proc gplot;  
plot (y diff)*time;
run;
proc univariate data=try;
var y;
run;quit;
data pre_raw;
input yt @@;
time=_n_+126;
cards;
58790
57240
64271
55247
53521
61977
;
data try_exp;
set try;
where time<127;
proc forecast data=try_exp lead=6 out=pre_exp_total interval=monthly
outlimit seasons=12 outest=est outfitstats method=winters trend=2;
var y;
proc print data=est;run;quit;
proc print data=pre_exp_total;run;quit;
data pre_expU95;
set pre_exp_total;
where _TYPE_='U95';
U95=y;
data pre_expL95;
set pre_exp_total;
where _TYPE_='L95';
L95=y;
data pre_exp;
set pre_exp_total;
where _TYPE_='FORECAST';
pre=y;
data error_of_exp;
merge pre_raw pre_expU95 pre_expL95 pre_exp;
SE=(yt-pre)**2;
AE=abs(yt-pre);
PE=((yt-pre)/yt)*100;
APE=(abs((yt-pre)/yt))*100;
title'Value of Forecast';
proc print data=error_of_exp; 
var time yt pre L95  U95;
run;
title;
title 'Error of Exponential Smoothing';
proc means data=error_of_exp;
var SE AE PE APE;
output out=kind_of_exp_error mean=MSE MAE MPE MAPE; 
run;
proc print data=kind_of_exp_error;
var MSE MAE MPE MAPE;
run;quit;
title;
title 'FORECAST PLOT OF Exponential Smoothing';
proc gplot data=error_of_exp;
plot 
yt*time=3
l95*time=1
u95*time=2
y*time=4
      /overlay;
run;
title;
quit;
