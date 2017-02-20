data dcf4;
       input year d @@;
       t=5;
       d1990=1.29;
       d1995=5.85;
       gc1=(d1995/d1990)**(1/t);
       d1=round(d1990*(gc1**(year-1990)), .001);
       cards;
    1990 1.29 1991 .  1992 .  1993 .  1994 . 1995 5.85
    ;
    proc reg data=dcf4 noprint;
       model d=year;
       output out=dcf_out1 p=d2;
    run;
    proc print data=dcf_out1;
       var year d d1 d2;
       title2 'Predicted Dividends Over Time';
       title3 'Compound Growth Rate and Linear Trend';
    run;
