DATA ch1702;
input num sex age stage blood xray chmthrp censor day;
cards;
1	1	45	2	2	0	1	1	 578
2	0	36	2	2	0	1	1	1549
3	1	57	2	2	1	0	1	 938
4	0	45	2	0	1	0	0	4717
5	0	42	2	0	1	1	1	4111
6	0	39	2	1	0	1	1	1245
7	1	38	2	1	1	1	1	4435
8	1	45	2	2	1	0	1	3750
9	1	30	2	0	1	0	1	3958
10	0	45	2	1	0	1	1	2581
11	0	45	3	1	0	1	1	3572
12	1	57	2	1	1	0	1	2938
13	0	57	2	2	0	1	1	1932
14	1	49	2	2	1	1	1	3205
15	1	33	2	1	0	1	1	3451
16	0	51	2	2	1	0	1	2363
;
PROC PHREG;
Model day*censor(0)=sex age stage blood xray chmthrp/  
      risklimits; 
RUN;
PROC PHREG data=ch1702;
Model day*censor(0)=blood xray/risklimits;
   baseline out=phout survival=s_t      stderr=stderr / method=ch ;
symbol1 i=join v=none l=1;
symbol2 i=join v=none l=3;
strata xray;
proc gplot data=phout;
plot s_t*day=xray;run;
proc print data=phout;
RUN;


