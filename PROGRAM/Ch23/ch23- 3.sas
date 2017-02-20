proc iml;
start F_HS43(x);
f=x*t(x)+x[3]*x[3]-5*(x[1]+x[2])-21*x[3]+7*x[4];
return(f);
finish F_HS43;
start C_HS43(x);
c=j(3,1,0.);
c[1]=8-x*t(x)-x[1]+ x[2]-x[3]+x[4];
c[2]=10-x*t(x)-x[2]*x[2]-x[4]*x[4]+x[1]+x[4];
c[3]=5-2.*x[1]*x[1]-x[2]*x[2]-x[3]*x[3]-2.*x[1]+x[2]+x[4];
return(c);
finish C_HS43;
x=j(1,4,1);
optn=j(1,11,.); optn[2]=3;optn[10]=3;optn[11]=0;
call nlpqn(rc,xres,"F_HS43",x,optn) nlc="C_HS43";
