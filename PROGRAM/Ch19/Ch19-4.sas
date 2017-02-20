options formdlim='-' pageno=min nodate;
DATA normal1; drop obs I;
do obs=1 to 100000;
array Ys[25] Y1-Y25;
do I = 1 to 25;
Ys[I]=100+16*NORMAL(0);
end; output; end;
proc univariate plot normal; var Y1;
title 'One Sample of 100,000 scores from Normal Distribution'; run;
run;
*************************************************************************;
data normal2; set normal1;
mean4 = mean(of Y1-Y4);     mean25 = mean(of Y1-Y25);
std4 = std(of Y1-Y4);      std25=std(of Y1-Y25);
var4 = std4*std4;      var25 = std25*std25;
Z4 = (mean4 - 100)/8;      Z25 = (mean25 - 100)/3.2;
T4 = (mean4 - 100)/(std4/2);     T25 = (mean25 - 100)/(std25/5);
proc univariate noprint; 
output out=normal3 
 mean=mean_mean4 mean_var4 mean_std4 mean_Z4 mean_T4
 mean=mean_mean25 mean_var25 mean_std25 mean_Z25 mean_T25
 median=med_mean4 med_var4 med_std4 med_Z4 med_T4
 median=med_mean25 med_var25 med_std25 med_Z25 med_T25
 std=std_mean4 std_var4 std_std4 std_Z4 std_T4
 std=std_mean25 std_var25 std_std25 std_Z25 std_T25
 kurtosis=kurt_mean4 kurt_var4 kurt_std4 kurt_Z4 kurt_T4
 kurtosis=kurt_mean25 kurt_var25 kurt_std25 kurt_Z25 kurt_T25
 min=min_mean4 min_var4 min_std4 min_Z4 min_T4
 min=min_mean25 min_var25 min_std25 min_Z25 min_T25
 max=max_mean4 max_var4 max_std4 max_Z4 max_T4
 max=max_mean25 max_var25 max_std25 max_Z25 max_T25;
var mean4 var4 std4 Z4 T4 mean25 var25 std25 Z25 T25; run;
*************************************************************************;
data normal4; set normal3;
skew_mean4=(mean_mean4 - med_mean4)/std_mean4;
skew_mean25=(mean_mean25 - med_mean25)/std_mean25;
skew_var4=(mean_var4 - med_var4)/std_var4;
skew_var25=(mean_var25 - med_var25)/std_var25;
skew_std4=(mean_std4 - med_std4)/std_std4;
skew_std25=(mean_std25 - med_std25)/std_std25;
skew_Z4=(mean_Z4 - med_Z4)/std_Z4;
skew_Z25=(mean_Z25 - med_Z25)/std_Z25;
skew_T4=(mean_T4 - med_T4)/std_T4;
skew_T25=(mean_T25 - med_T25)/std_T25;
proc print; var mean_mean4 med_mean4 std_mean4 skew_mean4 kurt_mean4 min_mean4 max_mean4;
title 'Normal Population, Distribution of Sample Means, N = 4';
proc print; var mean_mean25 med_mean25 std_mean25 skew_mean25 kurt_mean25 min_mean25 max_mean25;
title 'Normal Population, Distribution of Sample Means, N = 25';
**;
proc print; var mean_var4 med_var4 std_var4 skew_var4 kurt_var4 min_var4 max_var4;
title 'Normal Population, Distribution of Sample Variances, N = 4';
proc print; var mean_var25 med_var25 std_var25 skew_var25 kurt_var25 min_var25 max_var25;
title 'Normal Population, Distribution of Sample Variances, N = 25';
**;
proc print; var mean_std4 med_std4 std_std4 skew_std4 kurt_std4 min_std4 max_std4;
title 'Normal Population, Distribution of Sample Standard Deviations, N = 4';
proc print; var mean_std25 med_std25 std_std25 skew_std25 kurt_std25 min_std25 max_std25;
title 'Normal Population, Distribution of Sample Standard Deviations, N = 25';
**;
proc print; var mean_Z4 med_Z4 std_Z4 skew_Z4 kurt_Z4 min_Z4 max_Z4;
title 'Normal Population, Distribution of Z Test Statistic, N = 4';
proc print; var mean_Z25 med_Z25 std_Z25 skew_Z25 kurt_Z25 min_Z25 max_Z25;
title 'Normal Population, Distribution of Z Test Statistic, N = 25';
**;
proc print; var mean_T4 med_T4 std_T4 skew_T4 kurt_T4 min_T4 max_T4;
title 'Normal Population, Distribution of T Test Statistic, N = 4';
proc print; var mean_T25 med_T25 std_T25 skew_T25 kurt_T25 min_T25 max_T25;
title 'Normal Population, Distribution of T Test Statistic, N = 25';
run;
*############################################################################;
DATA skewed1; drop obs J;
do obs=1 to 100000;
array Xs[25] X1-X25;
do J = 1 to 25;
Xs[J]=100*RANEXP(0);
end; output; end;
run;
proc univariate plot normal; var X1;
title 'One Sample of 100,000 scores from Exponential Distribution'; run;
*************************************************************************;
data skewed2; set skewed1;
mean4 = mean(of X1-X4);     mean25 = mean(of X1-X25);
Z4 = (mean4 - 100)/50;      Z25 = (mean25 - 100)/30;
std4 = std(of X1-X4);      std25=std(of X1-X25);
T4 = (mean4 - 100)/(std4/2);     T25 = (mean25 - 100)/(std25/5);
proc univariate noprint;
output out=skewed3 
 mean=mean_mean4 mean_Z4 mean_T4
 mean=mean_mean25  mean_Z25 mean_T25
 median=med_mean4  med_Z4 med_T4
 median=med_mean25 med_Z25 med_T25
 std=std_mean4 std_Z4 std_T4
 std=std_mean25 std_Z25 std_T25
 kurtosis=kurt_mean4 kurt_Z4 kurt_T4
 kurtosis=kurt_mean25 kurt_Z25 kurt_T25
 skewness=g1_mean4 g1_Z4 g1_T4
 skewness=g1_mean25 g1_Z25 g1_T25
 min=min_mean4 min_Z4 min_T4
 min=min_mean25 min_Z25 min_T25
 max=max_mean4 max_Z4 max_T4
 max=max_mean25 max_Z25 max_T25;
var mean4 Z4 T4 mean25 Z25 T25; run;
*************************************************************************;
data skewed4; set skewed3;
skew_mean4=(mean_mean4 - med_mean4)/std_mean4;
skew_mean25=(mean_mean25 - med_mean25)/std_mean25;
skew_Z4=(mean_Z4 - med_Z4)/std_Z4;
skew_Z25=(mean_Z25 - med_Z25)/std_Z25;
skew_T4=(mean_T4 - med_T4)/std_T4;
skew_T25=(mean_T25 - med_T25)/std_T25;
proc print; var mean_mean4 med_mean4 std_mean4 skew_mean4 g1_mean4 kurt_mean4 min_mean4 max_mean4;
title 'Exponential Population, Distribution of Sample Means, N = 4';
proc print; var mean_mean25 med_mean25 std_mean25 skew_mean25 g1_mean25 kurt_mean25 min_mean25 max_mean25;
title 'Exponential Population, Distribution of Sample Means, N = 25';
**;
proc print; var mean_Z4 med_Z4 std_Z4 skew_Z4 g1_Z4 kurt_Z4 min_Z4 max_Z4;
title 'Exponential Population, Distribution of Z Test Statistic, N = 4';
proc print; var mean_Z25 med_Z25 std_Z25 skew_Z25 g1_Z25 kurt_Z25 min_Z25 max_Z25;
title 'Exponential Population, Distribution of Z Test Statistic, N = 25';
**;
proc print; var mean_T4 med_T4 std_T4 skew_T4 g1_T4 kurt_T4 min_T4 max_T4;
title 'Exponential Population, Distribution of T Test Statistic, N = 4';
proc print; var mean_T25 med_T25 std_T25 skew_T25 g1_T25 kurt_T25 min_T25 max_T25;
title 'Exponential Population, Distribution of T Test Statistic, N = 25';
run;
