DATA ch1701;
input t @@;
if t<0 then censor=1;
else censor=0;
if _N_<16 then group='A';
else group='B';
t=abs(t);
cards;
28	29	175	195	309	-377	-393	-421
-447	452  -709	744	770	 -1106	-1206
34	88	137	199	280	291 	-299	-300	309
351  358	369	370	375	382	392	 -429	451	 -1119
;
run;
PROC LIFETEST method=pl plots=(s,ls);
time t*censor(1);
strata group;
PROC LIFETEST method=lt plots(s,h);
time t*censor(1);
strata group;
run;

