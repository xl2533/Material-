

data return1;
input r_m r_f gerber @@;
retain date '01dec77'd;
date=intnx('month',date,1);
format date monyy.;
r_gerber = gerber - r_f;
r_mkt = r_m - r_f;
label r_m='Market Rate of Return'
r_f='Risk-Free Rate of Return'
gerber='Rate of Return for Gerber Corporation'
r_gerber='Risk Premium for Gerber Corporation'
 r_mkt='Risk Premium for Market';
cards;
-.045 .00487 -.048   .010 .00494  .160   .050 .00526 -.036
 .063 .00491  .004   .067 .00513  .046   .007 .00527  .028
 .071 .00528 -.012   .079 .00607 -.079   .002 .00645  .104
-.189 .00685 -.138   .084 .00719  .078   .015 .00690 -.086
 .058 .00761  .042   .011 .00761 -.023   .123 .00769  .065
 .026 .00764 -.088   .014 .00772 -.023   .075 .00715  .095
-.013 .00728 -.096   .095 .00789  .148   .039 .00802 -.009
-.097 .00913 -.090   .116 .00819 -.014   .086 .00747 -.036
 .124 .00883  .048   .112 .01073 -.004  -.243 .01181 -.237
 .080 .00753  .027   .062 .00630  .233   .086 .00503  .011
 .065 .00602  .005   .025 .00731 -.008   .015 .00860  .066
 .006 .00895  .026   .092 .01137  .023  -.056 .00977  .070
-.014 .01092  .056  -.009 .01096 -.020   .067 .01025  .023
-.008 .01084  .031   .064 .01255  .008  -.003 .01128  .066
-.033 .01154  .021  -.031 .01169  .031  -.164 .01054  .000
 .062 .01003 -.012   .069 .00816  .011  -.039 .00740 -.077
-.079 .00949 -.004  -.101 .00946 -.111  -.028 .01067  .136
 .041 .00972  .044   .003 .00908  .043  -.078 .00914 -.033
-.006 .00714  .019   .122 .00503  .130   .008 .00563  .209
 .136 .00620 -.009   .049 .00614 -.072   .014 .00648  .015
 .065 .00646  .015   .028 .00599  .024   .043 .00686  .084
 .097 .00652  .119   .080 .00649  .016   .048 .00673  .114
-.017 .00714 -.007  -.034 .00668  .062   .000 .00702  .049
-.082 .00678  .000   .066 .00683  .077  -.012 .00693  .063
-.029 .00712  .065  -.030 .00672 -.091   .003 .00763 -.003
-.003 .00741 -.025  -.058 .00627 -.087   .005 .00748  .105
-.058 .00771 -.112   .146 .00852  .018   .000 .00830  .165
-.035 .00688 -.160  -.019 .00602  .094  -.001 .00612 -.005
 .097 .00606  .091   .012 .00586  .006   .008 .00650  .013
-.010 .00601 -.037   .019 .00512  .234  -.003 .00536 -.031
 .012 .00562 -.036   .005 .00545  .025  -.055 .00571 -.048
 .026 .00577  .097   .059 .00540  .137   .013 .00479  .063
-.009 .00548 -.088   .049 .00523  .034   .048 .00508  .174
-.009 .00444  .113   .049 .00469 -.040   .004 .00478 -.038
-.076 .00458 -.105   .049 .00343  .111  -.047 .00416  .037
 .018 .00418 -.069   .000 .00420 -.020  -.005 .00382 -.060
    ;
	run;
   proc print data=return1 (obs=5) label;
     var date r_gerber r_mkt r_m r_f gerber;
      title 'CAPM Analysis';
      title2 'Returns and Risk Premiums';
   run;
proc plot data=return1 vpct=125;
      plot r_gerber*r_mkt = '*' / href=0;
      title2 'Gerber Corporation Stock Premiums';
      title3 'Versus Market Premiums';
   run;
 proc timeplot data=return1 maxdec=5;
      plot r_gerber='G' r_mkt='M' r_f='F' / overlay;
      plot gerber='G' r_m='M' r_f='F' / overlay;
      id date;
      title2 'Time Plot';
      title3 'Gerber, Market, and Risk Free';
   run;
   proc reg data=return1;
       model r_gerber = r_mkt / dw spec;
       output out=r_out1 r=r1 p=p l95=l u95=u;
       slope: test r_mkt=1;
       title2 'Gerber Corporation Common Stock';
       title3;
    run;
data regdata (keep=y_value pt_type r_mkt);
       set r_out1;
       label pt_type='Observation Type';
       array regvar(4) r_gerber p1 l u;
       array varlabel(4) $12 _temporary_
          ('Actual' 'Predicted' 'Lower Limits' 'Upper Limits');
       do i=1 to 4;
          y_value=regvar(i);
          pt_type=varlabel(i);
       output;
       end;
    run;
    proc gplot data=regdata;
       plot y_value*r_mkt=pt_type / haxis=axis1 vaxis=axis2
                                    hminor=4 vminor=4;
       symbol1 v=* h=3.5 pct font=swissb color=black;
       symbol2 i=join font=swissb l=2 color=blue;
       symbol3 i=join font=swissb l=1 color=green;
       symbol4 i=join font=swissb l=2 color=red;
       axis1 order=(-.3 to .15 by .05);
       axis2 label=(angle=90 'Gerber Stock Risk Premium')
             order=(-.5 to .5 by .25);
       title1 'Actual and Predicted Values';
       title2 'with Upper and Lower Confidence Limits';
    run;
    quit;
