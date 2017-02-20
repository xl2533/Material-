title;               
      footnote;     
goptions ftext=SWISS ctext=BLACK htext=1.0 cells;   
*** Produce pie charts ***;    
proc gchart data=Sasuser.Fitness ;            
   pie3d group / description="Pie Chart of group"         
                   coutline=BLACK             
                   percent=NONE           
                   slice=OUTSIDE        
                   value=OUTSIDE  
                   type=FREQ     
                   ;                                                                                                                    
run;             
quit;      
goptions ftext= ctext= htext= ;  
