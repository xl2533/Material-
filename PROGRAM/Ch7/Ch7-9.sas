data  ch709;
input job$  salary@@;
cards;
a  3200  b  2800  c  2600   a  3300  b  3300   a  3600   b  3000  a  3200  
a  3300   c  3000
;
proc chart;
Hbar  salary;
run;
data  a10-2;
input job$  salary@@;
cards;
a  3200  b  2800  c  2600   a  3300  b  3300   a  3600   b  3000  a  3200  
a  3300   c  3000
;
proc chart;
Hbar  job/sumvar=salary   type=mean;     
run;
data  ch71103;
input job $  salary@@;
cards;
a  3200  b  2800  c  2600   a  3300  b  3300   a  3600   b  3000  a  3200
a  3300   c  3000
;
run;
proc chart;
pie  job/sumvar=salary   type=sum;
run;





















