data a31;
input x y@@;
d=x-y;
cards;
78.1  79.1  72.4  81.0  76.2  77.3  74.3  79.1  77.4  80.0  78.4  79.1  76.0  79.1  75.5  77.3  76.7  80.2  77.3  82.1
;
proc univariate;
var d;
run;
data a32;
do c=1 to 2;
input n@@;
do I=1 to n;
input x@@;
output;
end;
end;
cards;
10
78.1  72.4  76.2  74.3  77.4  78.4  76.0  75.5  76.7  77.3
10
79.1  81.0  77.3  79.1  80.0  79.1  79.1  77.3  80.2  82.1
;
proc ttest;
class c;
var x;
run;


























