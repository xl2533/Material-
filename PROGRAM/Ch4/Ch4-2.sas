proc print data=sasuser.city noobs label; 
VAR atlanta chicago denver houston city;
label atlanta='亚特兰大' chicago='芝加哥' denver='丹佛' houston='休士顿' city='城市';
run;

