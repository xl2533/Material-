proc print data=sasuser.fitness; 
run;
proc print data=sasuser.fitness; 
var age weight oxygen group;
run;
proc print data=sasuser.fitness noobs; 
var age weight oxygen group;
run;
proc print data=sasuser.fitness noobs; 
where age=51;
run;