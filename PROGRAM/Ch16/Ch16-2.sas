DATA ch1602;
input company $ X1 X2 X3 X4;
CARDS;
1   18.27	50.48	9.99	78.74
2	22.22	60.77	11.70	94.70
3	17.16	45.09	10.32	72.56
4	17.38	48.45	8.95	74.78
5	20.41	56.86	11.40	88.67
6	15.80	41.34	10.18	67.32
7	18.65	52.80	9.44	80.89
8	20.84	59.99	11.61	92.44
9	16.17	49.18	8.27	73.62
10	15.47	42.56	9.17	67.20
11	16.41	50.33	9.22	75.96
12	17.68	41.51	8.87	68.06
13	17.86	52.02	10.10	79.98
14	12.06	26.66	8.00	46.72
15	21.93	61.04	11.81	94.78
16	14.31	39.54	8.39	62.24
17	16.33	36.94	7.40	60.67
18	19.75	52.16	9.02	80.93
19	12.80	34.92	9.24	56.96
20	22.51	59.31	10.65	92.47
;
RUN;
PROC FASTCLUS maxclusters=3 data=ch1602 list outtree=out1;
var X1 X2 X3 X4;
ID company;
RUN;
    













