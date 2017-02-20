data ch0504;
  a=2;
  a2=sqrt(a);
  r=0.5;
  det=a*(1-r*r);
  do x=-3 to 3 by 0.3;
    do y=-3*a2 to 3*a2 by 0.3*a2;
      z=1/(2*3.1415926*det)*exp(-0.5/det*(a*x*x + y*y - 2*r*a2*x*y));
output;
    end;
  end;
  keep x y z;
run;
proc g3d data=ch0504;
  plot x*y=z;
run;
proc GCONTOUR data=ch0504;
plot x*y=z;
run;


