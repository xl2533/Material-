data ch1004;
input group x@@;
cards;
1 134 1 146 1 104 1 119 1 124 1 161
1 107 1 83 1 113 1 129 1 97 1 123 
2 70 2 118 2 101 2 85 2 107 2 132 2 94
;
RUN;
proc ttest;
  class group;
  var x;
run;
























