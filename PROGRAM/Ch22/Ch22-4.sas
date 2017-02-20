data dcf9;
       input firm $32. pe pr;
       label pe='Price Earnings Ratio 1990'
             pr='Dividend Payout Ratio 1990';
       cards;
    3M Company                  14.0 48
    Allegheny Power             10.5 88
    Cincinnati G&E               7.3 58
    Detroit Edison               8.2 54
    Dominion Resources          10.3 76
    Duke Power                  12.1 67
    Eli Lilly                   19.1 42
    Green Mountain Power        10.8 87
    Iowa-Ill Gas & Electric     10.6 84
    Kansas Power & Light        10.0 80
    Kentucky Utilities           9.9 74
    Minnesota Power & Light     10.5 78
    Northern States Power       12.3 81
    Oklahoma Gas & Electric     10.7 73
    Orange & Rockland Utilities  9.8 78
    Pennsylvania Power & Light  10.6 75
    Piedmont Natural Gas        11.3 68
    Potomac Electric Power      13.0 94
    TECO Energy                 12.3 65
    Texas Utilities              8.1 67
    Union Electric              10.0 77
    Wisconsin Energy            10.7 63
    Wicor                       20.9  .
    ;
	run;
	proc sort data=dcf9 out=dcf9a;
      by pe;
   run;
   proc print data=dcf9a (obs=23) label;
      title 'Sorting and Clustering Stocks';
      title2 'Sorting Stocks by PE Ratios';
   run;
 data dcf10;
      input year cin txu dte oru ku kan uep d ayp mpl
            iwg ppl oge wse gmp;
      label cin='Cincinnati G&E'
            txu='Texas Utilities'
            dte='Detroit Edison'
            oru='Orange & Rockland Utilities'
            ku='Kentucky Utilities'
            kan='Kansas Power & Light'
            uep='Union Electric'
            d='Dominion Resources'
            ayp='Allegheny Power'
            mpl='Minnesota Power & Light'
            iwg='Iowa-Ill Gas & Electric'
            ppl='Pennsylvania Power & Light'
            oge='Oklahoma Gas & Electric'
            wse='Wisconsin Energy'
            gmp='Green Mountain Power';
      cards;
   1986  8.4  7.9  9.7 6.5 6.5 5.9 7.1 6.7 6.7 5.6 7.1 7.2 6.1 5.1 7.1
   1987  8.2  8.9 10.7 7.2 6.9 6.4 7.5 6.9 7.3 6.1 7.5 7.6 6.7 5.7 7.4
   1988  8.4 10.4 11.4 7.3 7.0 6.9 8.4 7.0 7.8 7.2 8.5 7.7 7.4 6.0 7.8
   1989  8.1  8.9  7.8 7.7 7.2 7.4 7.8 7.0 7.9 7.0 7.8 7.4 6.7 5.7 7.8
   1990  8.0  8.3  6.5 7.9 7.5 8.0 7.7 7.4 8.3 7.5 8.0 7.1 6.8 5.9 8.3
   ;
   proc plot data=dcf10 vpct=200;
      plot cin * year ='c'
           txu * year ='t'
           dte * year ='d'
           oru * year ='o'
           ku  * year ='k'/ overlay;
      title2 'Plotting Dividend Yields 1986-1990';
   run;
   proc corr data=dcf10 outp=dcf10a nosimple;
      var cin txu dte oru ku kan uep d ayp mpl
          iwg ppl oge wse gmp;
      title2 'Part of the Correlation Matrix';
   run;
   proc print data=dcf10a (obs=10) label;
      var _type_ _name_ cin txu dte;
      title2 'PROC CORR Output Data Set, DCF10A';
   run;
proc cluster data=dist1 method=density k=2 outtree=clust1;
      var cin_d txu_d dte_d oru_d ku_d kan_d uep_d d_d
          ayp_d mpl_d iwg_d ppl_d oge_d wse_d gmp_d;
      id _name_ ;
      title 'Sorting and Clustering Stocks';
      title2 'Record of Clustering';
   run;
   proc cluster data=dist1 method=density r=.1 outtree=clust2;
      var cin_d txu_d dte_d oru_d ku_d kan_d uep_d d_d
          ayp_d mpl_d iwg_d ppl_d oge_d wse_d gmp_d;
      id _name_ ;
   run;
   proc cluster data=dist1 method=single outtree=clust3;
      var cin_d txu_d dte_d oru_d ku_d kan_d uep_d d_d
          ayp_d mpl_d iwg_d ppl_d oge_d wse_d gmp_d;
      id _name_ ;
   run;
   proc cluster data=dist1 method=average outtree=clust4;
      var cin_d txu_d dte_d oru_d ku_d kan_d uep_d d_d
          ayp_d mpl_d iwg_d ppl_d oge_d wse_d gmp_d;
      id _name_ ;
   run;
   proc cluster data=dist1 method=centroid outtree=clust5;
      var cin_d txu_d dte_d oru_d ku_d kan_d uep_d d_d
          ayp_d mpl_d iwg_d ppl_d oge_d wse_d gmp_d;
      id _name_ ;
   run;
   proc cluster data=dist1 method=complete outtree=clust6;
      var cin_d txu_d dte_d oru_d ku_d kan_d uep_d d_d
          ayp_d mpl_d iwg_d ppl_d oge_d wse_d gmp_d;
      id _name_ ;
   run;
   proc tree data=clust3 maxheight=.35 minheight=0 horizontal;
      title2 'Single Linkage Clustering Tree Diagram';
      title3;
   run;
   proc tree data=clust4 maxheight=1.8 minheight=0 horizontal;
      title2 'Average Linkage Clustering Tree Diagram';
   run;
   proc tree data=clust5 maxheight=1.8 minheight=0 horizontal;
      title2 'Centroid Linkage Clustering Tree Diagram';
   run;
   proc tree data=clust6 maxheight=3.25 minheight=0 horizontal;
      title2 'Complete Linkage Clustering Tree Diagram';
   run;
   proc tree data=clust3 nclusters=3 out=clust3a noprint;
   run;

