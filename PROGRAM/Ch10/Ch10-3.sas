data ch1003;
  input x@@;
  y=x-20;
  cards;
  20.99 20.41 20.10 20.00 22.60
  20.99 20.41 20 23 22
proc means mean t prt;
  var y;
run;
























