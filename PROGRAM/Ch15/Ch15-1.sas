data economy;                                                                                                                           
input type X1-X6@@;                                                                                                                     
cards;                                                                                                                                  
1      135.2      36.4      10.47      44.16      36.4      3.94                                                                        
1      145.68      32.83      17.79      27.29      39.09      3.47                                                                     
1      159.37      33.38      18.37      11.81      25.29      5.22                                                                     
1      144.98      29.12      11.67      42.6      27.3      5.74                                                                       
1      169.92      32.75      12.72      47.12      34.35      5                                                                        
1      115.84      30.76      12.2      33.61      33.77      3.85                                                                      
2      116.22      29.57      13.24      13.76      21.75      6.04                                                                     
2      153.11      23.09      15.62      23.54      18.18      6.39                                                                     
2      144.92      21.26      16.96      19.52      21.75      6.73                                                                     
2      140.54      21.59      17.64      19.19      15.97      4.94                                                                     
2      140.64      28.26      12.35      18.53      20.95      6.23                                                                     
2      164.02      24.74      13.63      22.2      18.06      6.04                                                                      
2      139.08      18.47      14.68      13.41      20.66      3.85                                                                     
2      137.8      20.74      11.07      17.74      16.49      4.39                                                                      
2      121.67      21.53      12.58      14.49      12.18      4.57                                                                     
2      123.24      38      13.72      4.64      17.77      5.75                                                                         
3      95.21      22.83      9.3      22.44      22.81      2.8                                                                         
3      104.78      25.11      6.46      9.89      18.17      3.25                                                                       
3      128.41      27.63      8.94      12.58      23.99      3.27                                                                      
3      101.18      23.26      8.46      20.2      20.5      4.3                                                                         
3      124.27      19.81      8.89      14.22      15.53      3.03                                                                      
3      106.02      20.56      10.94      10.11      18      3.29                                                                        
3      95.65      16.82      5.7      6.03      12.36      4.49                                                                         
3      107.12      16.45      8.98      5.4      8.78      5.93                                                                         
3      113.74      24.11      6.46      9.61      22.92      2.53                                                                       
.     190.33      43.77      9.73      60.54      49.01      9.04                                                                       
.     221.11      38.64      12.53      115.65      50.82      5.89                                                                     
.     182.55      20.52      18.32      42.4      36.97      11.68                                                                      
;
run; 
proc candisc out=result ncan=2;                                                                                                         
class type;                                                                                                                             
var X1-X6;                                                                                                                              
run;                                                                                                                                    
proc gplot data=result;                                                                                                                 
plot can1*can2=type;                                                                                                                    
run;                                                                                                                                    
proc discrim data=result distance list;                                                                                                 
class type;var can1 can2;                                                                                                               
run;













