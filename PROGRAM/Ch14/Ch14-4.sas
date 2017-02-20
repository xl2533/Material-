DATA ch1403;
input People $ Hdgp  Hd11d  Xh Jsbgp Jsp Others @@;
cards;
x1 75	30	9	5	7	2
x2 76	42	12	9	7	2
x3 59	46	5	9	3	2
x4 119	68	11	14	11	1
x5 54	24	8	8	4	1
x6 37	26	7	1	2	2
x7 46	25	6	2	2	1
x8 15	9	2	1	1	1
x9 12	8	2	3	4	1
x10 25	15	5	4	5	1
x11 55	30	5	6	1	2
x12 32	20	3	5	1	1
x13 25	11	3	2	4	1
run;
PROC CORRESP OUTC=ccc;
VAR Hdgp  Hd11d  Xh Jsbgp Jsp Others;
ID People;
RUN;












