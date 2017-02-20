data ch1202;
input lab $ smooth @@;
cards;
a1 38.7 a1 41.5 a1 43.8 a1 44.5
a1 45.5 a1 46.0 a1 47.7 a1 58.0
a2 39.2 a2 39.3 a2 39.7 a2 41.4
a2 41.8 a2 42.9 a2 43.3 a2 45.8
a3 34.0 a3 35.0 a3 39.0 a3 40.0
a3 43.0 a3 43.0 a3 44.0 a3 45.0
a4 34.0 a4 34.8 a4 34.8 a4 35.4
a4 37.2 a4 37.8 a4 41.2 a4 42.8
;
run;
proc anova data=ch1202;
class lab;
model smooth=lab;
run;
proc anova data=ch1202;
class lab;
model smooth=lab;
means lab;
means lab/clm alpha=0.05;
means lab/t cldiff alpha=0.05;
run;






