data ch1301;
input city $  X1 X2  X3  X4  X5  X6 X7 X8 X9  X10;
CARDS;
北　　京 	1198	78702835	82099969	12276	32998	11171514	33715013	86984521	450	18054937
天　　津 	949 	43591500	85276980	5670	42014	4170479 	18497987	28110200	170	4874598
石 家 庄 	940	    20266320	25606557	14148	12142	773736  	10994463	15532427	86	1459934
太　　原 	349	    10136482	10964052	3703	18717	753306  	5011273 	11839536	75	1601115
呼和浩特 	216 	9000845 	6431716 	4622	7663	455202  	5498228 	4530845 	30	696228
沈　　阳 	704 	25196338	32908966	9598	17552	1756336 	17903457	19219758	95	2216804
大　　连	572 	25696699	34374622	12875	27526	1961357  	14694899	18664886	83	2011097
长　　春	739 	17411922	21409495	6937	10594	715908  	9504180 	11745969	84	1676756
哈 尔 滨 	980 	20940751	13354023	8981	10641	1182934 	8098657 	15638334	143	2693010
上　　海 	1368	103663700	185731331	10205	75184	15760724	39250884	94802800	265	10924039
南　　京 	607 	27737800	46928106	22054	18392	2464392 	16135518	18348800	92	2996011
杭　　州 	666 	34415068	69754591	25810	20925	3013888 	14607422	24736900	116	3811736
宁　　波 	560 	28744435	61879133	29146	20305	2573799 	15027686	17520388	89	2570098
合　　肥 	470 	10737600	11090010	7813	6776	794046  	8167825 	6245600 	43	941118
福　　州 	623 	16640515	22304505	11842	11554	1156184 	7323412 	13113823	83	1715620
厦　　门 	160 	11680229	23678616	5804	4550	1361653 	6620984 	6808196 	74	1881273
南　　昌 	484 	11838973	9659690 	5161	4793	681075  	6430198 	7338474 	55	1118146
济　　南 	603 	21850856	26192494	7991	16199	1284388 	10167663	11825655	108	2404311
青　　岛 	749 	32065800	51846820	24400	39294	2259904 	14856894	15676197	124	2920052
郑　　州 	692 	20134777	23645073	13667	9808	1760266 	10319917	16207242	90	1696078
武　　汉 	819 	25907569	28185869	16194	20818	1786021 	13252827	18877333	146	3017343
长　　沙 	631 	17989572	12717584	11864	12778	1328345 	10898081	10930400	73	1795041
广　　州 	761 	60738277	72820564	43777	42320	4270831 	16963824	55623554	199	7299497
深　　圳 	197 	58135624	119286001	13957	11311	5008827 	12736693	37447000	179	6296600
南　　宁 	672 	8701481 	4954808 	9665	7871	566221  	4472211 	6814522 	57	1177159
海　　口 	177 	3501246 	2838869 	15836	7176	211288  	1582308	    4069576 	26	557936
重　　庆 	3199	34915700	32142340	61228	42807	3177165 	24518351	29490500	210	4034057
成　　都 	1103	27504776	21114292	41070	28143	1867703 	18995781	24114509	133	3008605
贵　　阳 	355 	6028845 	6696494 	22062	6635	615798  	4133576 	5822004 	59	1086325
昆　　明 	514 	12072855	13313577	9227	12146	1037160 	6540186 	11560674	76	1578136
西　　安 	753 	14736800	11877418	11245	11832	858854  	10666200	19505281	120	2464254
兰　　州 	314 	6384705 	9531331 	2732	6262	331417  	2982056 	6877518 	51	978650
西　　宁 	213 	2816093 	3192388 	3476	2669	141598  	1410423 	2727921 	21	443496
银　　川 	145 	3352918 	4017086 	2722	3902	236120  	2328456 	3063847 	29	681466
乌鲁木齐 	202 	6543019 	6898026 	3945	14182	570356  	2141065 	6781600 	45	1063090
;
RUN;
proc standard data=ch1301 out=ch130101 mean=0 std=1 vardef=n;
run;
data ch130101;
format city $   X1 X2  X3  X4  X5  X6 X7 X8 X9  X10;
set ch1301;
run;
proc print data=ch130101;
run;
proc princomp out=ch130101;
run;
proc sort;
by prin1;
proc print;
id city;
var prin1 prin2 prin3 X1 X2 X3 X4 X5 X6 X7 X8 X9 X10;
title 2 'prov listed in order of overall econ';
title 3 'As determined by the first principal Component';
run;








