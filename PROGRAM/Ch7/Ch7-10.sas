DATA  PRODUCT;
INPUT  year  1-2  prod  3-7 @;
Cards;
8424334
8532424
8634234
8724345
8824343
8934353
9023123
;
RUN;
PROC  CHART;
  VBAR  year/SUMVAR=prod; 
PROC  PRINT;
RUN;
DATA ch71105;
  INPUT  year  prod @@;
CARDS;
84 24334 85 32424 86 34234 87 24345 88 24343 89 34353 90 23123
;
PROC  CHART;
  HBAR  year/SUMVAR=prod;
PROC PRINT;
RUN;






















