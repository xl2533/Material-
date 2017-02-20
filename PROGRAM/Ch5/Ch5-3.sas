data GDP;input year$ property$ gdp ;
cards;
2000 first  14628.2
2000 second 44935.3
2000 third  29878.7
2001 first  14609.9
2001 second 49069.1
2001 third  32254.3
2002 first  14883.0
2002 second 52982.4
2002 third  34533.2
;
RUN;
proc gchart;
block year/subgroup=property sumvar=gdp;
run;
