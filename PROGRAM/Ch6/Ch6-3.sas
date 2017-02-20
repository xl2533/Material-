title;
    footnote;   
*** 2-dimensional Scatter Plots ***; 
goptions ftext=SWISS ctext=BLACK htext=1 cells;  
axis1 width=1 offset=(3 pct) label=(a=90 r=0); 
axis2 width=1 offset=(3 pct); 
symbol1 c=BLUE ci=BLUE v=SQUARE height=1 cells 
        interpol=NONE l=1 w=1; 
proc gplot data=Sasuser.Fitness ;
   plot OXYGEN * AGE  /   
      name='SCAT'
      description="Scatter Plot of OXYGEN * AGE" 
      caxis = BLACK   
      ctext = BLACK  
      cframe = CXF7E1C2             
      hminor = 0
      vminor = 0   
      vaxis = axis1        
      haxis = axis2 
      ;
      run; 
quit; 
goptions ftext= ctext= htext=;  
symbol1;    
axis1;







