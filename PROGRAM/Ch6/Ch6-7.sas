data ch607; 
input year us@@; 
cards; 
1940 12.6 1950 10.0 
1960 14.2 1965 15.0 
1970 10.2 1972 13.7 
1973 13.0 1974 11.5 
; 
proc sort; by year; proc timeplot; plot us; id year; 
run;
data ch607; 
input year us world@@; 
cards; 
1940 12.6 31.2 1950 10.0 30.6 
1960 14.2 46.2 1965 15.0 55.0 
1970 10.2 53.6 1972 13.7 62.9 1973 13.0 63.3 1974 11.5 64.3 
; 
proc sort; by year; proc timeplot; plot us world/overlay; id year; 
run;


