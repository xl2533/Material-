proc iml; 
reset nop rint;
fre={0 2 3 0 0,3 1 0 0 0,1 1 1 1 0,1 0 0 2 1,1 0 0 1 2}; 
a= {1,1,1,1,1};
sum=fre*a; 
resum=repeat(sum,1,5);
pij= fre/resum;
n=1;
do until(n=21);
    pp=pij**n;
    print pp [format=8.2] n;
    n=n+1; 
end;
proc print;
run;
