Dm'log;clear;output;clear;';
Options font=sasfont 8;
DATA  ch1105;
  INPUT  x  y;
Cards;
0		9.6	
1		18.3	
2		29.0	
3		47.2	
4		71.1	
5		119.1
6		174.6
7		257.3
8		350.7
9		441.0
10		513.3
11		559.7
12		594.8
13		629.4
14		640.8
15		651.1
16		655.9
17		659.6
18		661.8
;
run;
PROC  NLIN  METHOD=DUD  BEST=2;
  PARMS K=661  TO  665  BY  2
        A=3  TO  5
        B=-0.6  TO  -0.4  BY  0.1;
MODEL  y=K/(1+EXP(A+B*x));
RUN;




