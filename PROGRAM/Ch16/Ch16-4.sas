data ch1604;
input Country $ Cal Cellphone Fee Computer Mips Net;
CARDS;
美国 631.6 161.9 0.36 403 26073 35.34
日本 498.4 143.2 3.57 176 10223 6.26
德国 557.6 70.6 2.18 199 11571 9.48
瑞典 684.1 281.8 1.4 286 16660 29.39
瑞士 644 93.5 1.98 234 13621 22.68
丹麦 620.3 248.6 2.56 296 17210 21.84
新加坡 498.4 147.5 2.5 284 13578 13.49
中国台湾 469.4 56.1 3.68 119 6911 1.72
韩国 434.5 73 3.36 99 5795 1.66
巴西 81.9 16.3 3.02 19 876 0.52
智利 138.6 8.2 1.4 31 1411 1.28
墨西哥 92.2 9.8 2.61 31 1751 0.35
俄罗斯 174.9 5 5.12 24 1101 0.48
波兰 169 6.5 3.68 40 1796 1.45
匈牙利 262.2 49.4 2.66 68 3067 3.09
马来西亚 195.5 88.4 4.19 53 2734 1.25
泰国 78.6 27.8 4.95 22 1662 0.11
印度 13.6 0.3 6.28 2 101 0.01
法国 559.1 42.9 1.27 201 11702 4.76
英国 521.1 122.5 0.98 248 14461 11.91
;
run;
PROC CLUSTER   STANDARD METHOD=CENTROID CCC PSEUDO OUT=TREE;
PROC TREE DATA=TREE HORIZONTAL SPACES=1;
RUN;
