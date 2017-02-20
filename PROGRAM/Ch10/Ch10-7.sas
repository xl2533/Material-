data ch1007;
do I=1 to 2;
input n;
do j=1 to n;
input x@@;
output;
end;end;
cards;
8
0.225  0.262  0.217  0.240  0.230  0.229  0.235  0.217
10
0.209  0.205  0.196  0.210  0.202  0.207  0.224  0.223  0.220  0.201
;
proc ttest;
class I;
var x;
run;

























