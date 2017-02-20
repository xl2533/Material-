data hat;   /*�������ݼ�*/
   do x=-5 to 5 by 0.25;
      do y=-5 to 5 by 0.25;
         z=sin(sqrt(x*x+y*y));
         output;
      end;
   end;
run;
goptions reset=global gunit=pct border cback=white
         colors=(black blue green red)
         ftext=swiss ftitle=swissb htitle=6 htext=4;  /*htitle ���ñ�������壬htext ��������������*/
   title 'Surface Plot of HAT Data Set';
footnote j=r 'TJ911.CN'; 
proc g3d data=hat;
   plot y*x=z;
run;
proc g3d data=hat;
   plot y*x=z / grid      /*������������*/
                rotate=45   /*��z����ת*/
                ctop=red /*�ϱ�����ɫ*/
                cbottom=black   /*�±�����ɫ*/
                yticknum=5   /*������̶���Ŀ*/
                zticknum=5
                xticknum=5
                zmin=-3     /*zֵ�ķ�Χ*/
                zmax=1;
run;
proc g3d data=hat;
   plot y*x=z / side
                tilt=30;  /*��б�ĽǶ�*/
run;
proc Gcontour data=hat;
plot y*x=z;
run;



