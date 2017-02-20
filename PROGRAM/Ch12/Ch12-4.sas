DATA ch1204;
input type $ subject time1 time2 time3 time4;
cards;
1 1	1.431	1.519	1.477	1.364
1 2	1.385	1.562	1.459	1.372
1 3	1.473	1.487	1.612	1.414
1 4	1.452	1.535	1.537	1.403
1 5	1.371	1.469	1.268	1.296
2 6	1.257	0.976	0.725	0.578
2 7	1.232	0.934	0.828	0.609
2 8	1.298	1.036	0.813	0.512
2 9	1.216	1.247	0.694	0.579
2 10	1.275	0.942	0.675	0.621
;
RUN;
PROC ANOVA;
CLASS type;
MODEL time1 time2 time3 time4=type/nouni;
repeated time4/printe;
means type;
RUN;






