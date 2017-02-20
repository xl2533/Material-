data hat;   /*生成数据集*/
   do x=-5 to 5 by 0.25;
      do y=-5 to 5 by 0.25;
         z=sin(sqrt(x*x+y*y));
         output;
      end;
   end;
run;
goptions reset=global gunit=pct border cback=white
         colors=(black blue green red)
         ftext=swiss ftitle=swissb htitle=6 htext=4;  /*htitle 设置标题的字体，htext 设置坐标轴字体*/
   title 'Surface Plot of HAT Data Set';
footnote j=r 'TJ911.CN'; 
proc g3d data=hat;
   plot y*x=z;
run;
proc g3d data=hat;
   plot y*x=z / grid      /*坐标轴网格线*/
                rotate=45   /*绕z轴旋转*/
                ctop=red /*上表面颜色*/
                cbottom=black   /*下表面颜色*/
                yticknum=5   /*坐标轴刻度数目*/
                zticknum=5
                xticknum=5
                zmin=-3     /*z值的范围*/
                zmax=1;
run;
proc g3d data=hat;
   plot y*x=z / side
                tilt=30;  /*倾斜的角度*/
run;
proc Gcontour data=hat;
plot y*x=z;
run;



