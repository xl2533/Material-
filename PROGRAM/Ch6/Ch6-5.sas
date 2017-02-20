title;                         
      footnote;                       
*** Sort data by BY variables ***;                
proc sort data=Sasuser.Fitness out=WORK._stsrt_0;             
   by GROUP;                                
run;                         
*** Box plot ***;                        
goptions ftext=SWISS ctext=BLACK htext=1 cells;                
symbol1 c=BLACK h=1 cells;                             
proc boxplot data=WORK._stsrt_0 ;                                       
   plot (WEIGHT                                                      
            )*GROUP                                                    
                            / caxis = BLACK                                   
                              cframe = CXF7E1C2                                
                              ctext = BLACK                         
                              cboxes = BLACK                                
                              cboxfill = BLUE                              
                              idcolor = BLUE                                  
                              idsymbol = SQUARE                            
                              boxstyle = SKELETAL                         
                              waxis = 1                            
                              name = 'BOX'                            
                              description = "Box Plots of WEIGHT by GROUP"                       
                              npanel = 15                   
   ;                            
run;                  
symbol1;                        
goptions ftext= ctext= htext=;    
axis1;                
   quit; 

