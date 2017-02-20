DATA ch1402;
input X1 X2 X3 X4 Y1 Y2 Y3 Y4 Y5 Y6;
CARDS;
45623.05	2.5	8439	16.27	1.03	0.42	50	2.15	1.23	1.64
52256.67	1.3	18579	21.5	1.34	0.13	131	0.33	-0.27	-0.64
46551.87	1.13	10445	11.92	1.07	0.4	48	1.31	0.49	0.09
28146.76	1.38	7813	15	-0.43	0.19	20	0.87	3.57	1.8
38670.43	0.12	8980	26.71	-0.53	0.25	32	-0.09	-0.33	-0.84
26316.96	1.37	6609	11.07	-0.11	0.07	27	0.68	-0.12	0.87
45330.53	0.56	6070	12.4	0.35	0.06	31	0.28	-0.3	-0.16
45853.89	0.28	7896	13.93	-0.5	0.27	38	-0.78	-0.12	1.61
35964.64	0.74	6497	8.97	0.31	0.25	43	0.49	-0.09	-0.06
55832.61	-0.12	13149	9.22	-0.28	0.84	37	-0.79	-0.49	-0.98
33334.62	0.63	6222	11.63	0.01	-0.14	24	0.37	-0.4	-0.49
24633.27	0.59	5573	16.39	0.02	-0.47	28	0.03	0.15	0.26
39258.78	-0.69	9034	22.43	-0.47	0.03	45	-0.76	-0.46	-0.75
38201.47	-0.34	7083	18.53	-0.45	-0.2	34	-0.45	-0.34	-0.52
16524.32	0.44	5323	12.22	0.72	-0.83	13	0.05	-0.09	0.56
31855.63	-0.02	6019	11.88	0.37	-0.54	21	-0.11	-0.24	-0.02
22528.8	-0.16	9069	15.7	0.01	0.38	40	-0.17	-0.4	-0.71
21831.94	-0.15	5497	13.56	-0.81	-0.49	22	-0.38	-0.21	-0.59
19966.36	-0.15	5344	12.43	-0.24	-0.91	18	-0.05	-0.27	0.61
19225.71	-0.16	4233	10.16	-0.53	-0.77	27	-0.45	-0.18	1.08
;
RUN;
PROC CANCORR DATA=CH1402 all Vprefix=CP Wprefix=infrastructure;
var X1-X4;
with Y1-Y6;
RUN;










