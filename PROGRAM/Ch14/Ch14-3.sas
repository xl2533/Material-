data ch1803;
input region$ y1-y8 x1-x5@@;
cards;
 北京  	3229.28 	821.72 	847.39 	677.66 	768.34 	1429.15 	587.98 	561.19 
          6239.26 	318.54 	1097.81 	105.11 	3153.25
 天津  	2588.10 	531.97 	806.36 	435.38 	585.94 	897.02 	808.05 	334.40 
          4152.18 	182.99 	500.55 	108.19 	2954.09
 河北  	1583.68 	530.02 	399.04 	420.15 	390.24 	498.06 	461.18 	197.39 
          3456.85 	228.03 	34.88 	133.87 	1633.68
 山西  	1412.95 	518.10 	316.99 	347.49 	317.83 	567.85 	391.06 	250.74 
          3140.95 	150.61 	255.52 	37.31 	1452.91
 内蒙古  	1423.22 	594.69 	292.42 	268.88 	390.18 	548.21 	403.69 	274.33 
          3392.55 	128.61 	71.46 	58.97 	1099.49
 辽宁  	1846.11 	592.01 	272.75 	378.31 	347.47 	575.06 	412.09 	230.62 
          2809.88 	425.36 	168.49 	45.68 	1572.80
 吉林  	1650.95 	547.04 	257.73 	325.37 	344.97 	528.61 	453.85 	228.70 
          3084.12 	210.17 	55.60 	32.42 	1274.50
 黑龙江  	1561.00 	531.98 	259.61 	353.48 	318.34 	534.22 	432.09 	201.64
          2664.09 	192.42 	66.98 	30.21 	1640.18  
 上海  	4021.77 	577.39 	642.08 	557.96 	875.35 	1359.75 	732.44 	569.37 
          5171.35 	274.60 	1456.60 	38.46 	4791.53
 江苏  	2194.04 	525.88 	603.36 	297.46 	483.77 	691.50 	438.16 	298.58 
          3472.64 	749.94 	247.94 	91.01 	2106.97
 浙江  	2888.28 	669.03 	926.68 	532.69 	689.00 	1065.10 	724.46 	457.15 
          3472.64 	749.94 	247.94 	91.01 	2106.97
 安徽  	1998.95 	466.55 	327.36 	205.13 	333.39 	585.44 	407.13 	193.70 
          2859.25 	412.93 	284.33 	76.65 	1342.23
 福建  	2651.11 	506.94 	488.37 	283.24 	559.69 	598.95 	639.83 	287.00 
          4622.20 	361.62 	397.03 	164.42 	1665.14
 江西  	1587.55 	353.44 	292.10 	149.98 	310.94 	488.24 	527.16 	185.11 
          3685.09 	179.73 	23.00 	85.55 	1097.87
 山东  	1801.34 	700.29 	522.36 	327.49 	411.29 	777.79 	441.46 	270.38 
          4982.71 	521.13 	315.78 	147.83 	918.25
 河南  	1424.90 	484.16 	333.24 	298.74 	299.89 	427.88 	650.25 	191.10 
          2791.00 	199.41 	50.58 	340.24 	1421.34
 湖北  	1799.38 	582.66 	347.84 	241.87 	336.19 	698.89 	586.33 	211.63 
          3821.45 	249.18 	131.17 	116.43 	1090.51
 湖南  	1943.55 	551.47 	460.15 	328.63 	474.69 	826.89 	662.40 	298.45 
          4387.30 	243.96 	287.87 	239.48 	1254.65
 广东  	3089.63 	382.98 	556.14 	392.41 	1075.32 	961.79 	1126.74 	514.61 
          5132.82 	778.04 	1039.12 	491.49 	1766.74
 广西  	1968.02 	363.16 	480.73 	253.23 	457.24 	704.58 	740.06 	257.72 
          4370.15 	133.25 	46.86 	354.32 	1208.06
 海南  	2022.19 	208.83 	282.49 	243.85 	349.44 	525.92 	460.06 	275.06 
         3726.38 	121.70 	53.24 	89.01 	1091.00
 重庆  	2337.65 	589.28 	509.82 	334.05 	442.50 	850.15 	563.72 	246.51 
          4130.22 	316.49 	181.20 	184.13 	1403.57
 四川  	2082.18 	489.78 	460.55 	300.26 	381.47 	674.80 	530.25 	256.88 
          3321.47 	219.97 	215.01 	199.53 	1740.48
 贵州  	1748.83 	486.20 	361.88 	249.39 	371.68 	522.74 	333.73 	199.45 
          3508.89 	202.84 	35.86 	18.71 	1154.40
 云南  	2105.66 	535.41 	306.73 	369.63 	467.60 	595.92 	508.82 	362.84 
          4192.21 	313.47 	71.61 	203.65 	1487.78
 西藏  	2626.99 	1001.52 	258.21 	220.06 	628.39 	494.99 	369.10 	395.13 
          6958.30 	271.11 	5.56 	10.20 	478.01
 陕西  	1589.44 	443.74 	529.68 	361.18 	366.30 	642.45 	452.73 	252.22 
          3347.05 	144.78 	41.91 	53.82 	1462.57
 甘肃  	1639.17 	537.94 	367.32 	361.40 	320.88 	592.72 	322.94 	277.94 
          3645.29 	191.30 	36.64 	41.98 	1041.20
 青海  	1790.27 	532.51 	350.85 	374.40 	361.90 	594.03 	295.48 	399.14 
          3641.91 	107.52 	19.87 	18.84 	1545.42
 宁夏  	1562.57 	572.03 	469.18 	409.96 	437.72 	542.39 	323.16 	278.39 
          3242.54 	149.51 	203.12 	40.35 	1269.62
 新疆  	1716.80 	690.14 	440.37 	302.82 	406.72 	626.58 	474.61 	273.37 
          4614.02 	67.98 	50.71 	41.49 	1270.43
;
run;
proc cancorr   all Vprefix=income Wprefix=expend;
var x1-x5;
with y1-y8;
run;

