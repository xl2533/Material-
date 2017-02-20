data a;
  input age x1-x7 r c;
  i=1+2+3+4+5+6;
  j=i/6;
  x8=x7*(age-j);
  count=r;y=0;
  output;
  count=c;y=1;
  output;
  drop r c;
cards;
1 1 0 0 0 0 0 1  1   0
1 1 0 0 0 0 0 0  0 164
6 0 0 0 0 0 1 1  5   0
6 0 0 0 0 0 1 0  8  31
;
proc catmod;
  weight count;
  direct x1-x7;
  model y=x1-x7/ml noint;
run;
proc catmod;
  weight count;
  direct x1-x8;
  model y=x1-x8/ml noint;
run;
data a;
  input age x1-x9 r c;
  count=r;y=0;
  output;
  count=c;y=1;
  output;
  drop r c;
cards;
          1 1 0 0 0 0 0 0 0 0 0 61
          1 1 0 0 0 0 0 1 0 0 0 45
          1 1 0 0 0 0 0 0 1 0 0  5
          1 1 0 0 0 0 0 0 0 1 1  4
          6 0 0 0 0 0 1 0 0 0 4 23
          6 0 0 0 0 0 1 1 0 0 4  8
          6 0 0 0 0 0 1 0 1 0 2  0
          6 0 0 0 0 0 1 0 0 1 3  0
proc catmod;
  weight count;
  direct x1-x9;
  model y=x1-x9/ml noint;
run;




