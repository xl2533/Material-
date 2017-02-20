title;  
footnote;    
goptions ftext=SWISS ctext=BLACK htext=1.0 cells;  
goptions colors=(red green blue cyan purple tan pink orange 
                 brown yellow plum peru salmon lime);  
axis1 label=(a=90 r=0); 
*** Produce bar charts ***; 
proc gchart data=Sasuser.Fitness  ; 
   vbar AGE 
   / description="Vertical Bar Chart of AGE"   
     Frame
     woutline=1  
     type=FREQ
     coutline=BLACK
     patternid=midpoint 
     cframe=CXF7E1C2 
     ;     
run;  
goptions ftext= ctext= htext= ; 
quit; 




