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
keylabel mean='��ֵ' std='��׼��' stderr='��׼��' all='�ܼ�';
label group='���' runtime='ʱ��' oxygen='������';
run;



