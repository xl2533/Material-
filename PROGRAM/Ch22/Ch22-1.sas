data dcf_cal2;
       k=.0938;
       d1=1.68;
       d2=1.76;
       v0=round(d1/k, .01);
       v1=round(d1/(1+k), .01);
       v2=round(d1/((1+k)**2), .01);
       v3=round(d2/(k*(1+k)**2), .01);
       v=v1+v2+v3;
       label v0='DCF Value for $1.68 Dividend Series'
             v1='Discounted Value for 1988'
             v2='Discounted Value for 1989'
             v3='DCF Value for $1.76 Dividend Series'
             v='DCF Value for Two Periods';
    run;
    proc print data=dcf_cal2 label;
       var v0 v1 v2 v3 v;
       title2 'Discounted Cash Flow Values';
    run;


