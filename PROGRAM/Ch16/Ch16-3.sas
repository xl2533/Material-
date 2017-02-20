data ch1603;
input Province $ X1-X8;
CARDS;
北京 1394.89 2505 519.01 8144 373.9 117.3 112.6 843.43
天津 920.11 2720 345.46 6501 342.8 115.2 110.6 582.51
河北 2849.52 1258 704.87 4839 2033.3 115.2 115.8 1234.85
山西 1092.48 1250 290.9 4721 717.3 116.9 115.6 697.25
内蒙 832.88 1387 250.23 4134 781.7 117.5 116.8 419.39
辽宁 2793.37 2397 387.99 4911 1371.1 116.1 114 1840.55
吉林 1129.2 1872 320.45 4430 497.4 115.2 114.2 762.47
黑龙江 2014.53 2334 435.73 4145 824.8 116.1 114.3 1240.37
上海 2462.57 5343 996.48 9279 207.1 118.7 113 1642.95
江苏 5155.25 1926 1434.95 5943 1025.5 115.8 114.3 2026.64
浙江 3524.79 2249 1006.39 6619 754.4 116.6 113.5 916.59
安徽 2003.58 1254 474 4609 908.3 114.8 112.7 824.14
福建 2160.52 2320 553.97 5857 609.3 115.2 114.4 433.67
江西 1205.11 1182 282.84 4211 411.7 116.9 115.9 571.84
山东 5002.34 1527 1229.55 5145 1196.6 117.6 114.2 2207.69
河南 3002.74 1034 670.35 4344 1574.4 116.5 114.9 1367.92
湖北 2391.42 1527 571.86 4685 849 120 116.6 1220.72
湖南 2195.7 1408 422.61 4797 1011.8 119 115.5 843.83
广东 5381.72 2699 1639.83 8250 656.5 114 111.6 1396.35
广西 1606.15 1314 382.59 5105 556 118.4 116.4 554.97
海南 364.17 1814 198.35 5340 232.1 113.5 111.3 64.33
四川 3534 1261 822.54 4645 902.3 118.5 117 1431.81
贵州 630.07 942 150.84 4475 301.1 121.4 117.2 324.72
云南 1206.68 1261 334 5149 310.4 121.3 118.1 716.65
西藏 55.98 1110 17.87 7382 4.2 117.3 114.9 5.57
陕西 1000.03 1208 300.27 4396 500.9 119 117 600.98
甘肃 553.35 1007 114.81 5493 507 119.8 116.5 468.79
青海 165.31 1445 47.76 5753 61.6 118 116.3 105.8
宁夏 169.75 1355 61.98 5079 121.8 117.1 115.3 114.4
新疆 834.57 1469 376.95 5348 339 119.7 116.7 428.76
;
run;
PROC VARCLUS DATA=ch1603 CENTROID percent=0.95 outtree=out;
VAR X1-X8;
RUN;
PROC tree data=out horizontal graphics;
RUN;

    













