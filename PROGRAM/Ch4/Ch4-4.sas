proc tabulate data=sasuser.fitness;
class group;
var oxygen;
table group oxygen;
run;
proc tabulate data=sasuser.fitness;
class group;
var oxygen;
table group,oxygen;
run;
proc tabulate data=sasuser.fitness;
class group;
var runtime oxygen;
table group,( runtime oxygen)*(mean std stderr);
run;
proc tabulate data=sasuser.fitness;
class group;
var  runtime oxygen;
table (group all),( runtime oxygen)*(mean std stderr);
keylabel mean='均值' std='标准差' stderr='标准误' all='总计';
label group='组别' runtime='时间' oxygen='耗氧量';
run;



