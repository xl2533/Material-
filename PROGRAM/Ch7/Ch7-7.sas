proc tabulate data=blood;
   class Gender;
   table Gender;
run; 
proc tabulate data=learn.blood format=6.;
    class Gender BloodType;
    table Gender BloodType;
run; 
proc tabulate data=learn.blood format=6.;
   class Gender BloodType;
   table Gender,
          BloodType;
run; 
proc tabulate data=learn.blood format=6.;
       class Gender BloodType;
       table Gender * BloodType;
run; 
proc tabulate data=learn.blood format=comma9.2;
    var RBC WBC;
    table (RBC WBC)*(mean min max);
run; 
proc tabulate data=learn.blood format=comma11.2;
   class Gender AgeGroup;
   var RBC WBC Chol;
   table (Gender ALL)*(AgeGroup All),
          (RBC WBC Chol)*mean;
run; 
proc tabulate data=learn.blood format=6.;
    class BloodType;
    table BloodType*(n pctn);
run; 
proc tabulate data=learn.blood noseps;
    class Gender BloodType;
    table (BloodType ALL='All Blood Types'),
            (Gender ALL)*(n*f=5. colpctn*f=pctfmt7.1) /RTS=25;
     keylabel All = 'Both Genders'
                  n = 'Count'
                  colpctn = 'Percent';
run; 
title "Computing Percentages on a Numerical Value";
proc tabulate data=learn.sales;
  class Region;
  var TotalSales;
  table (Region ALL),
          TotalSales*(n*f=6. sum*f=dollar8.
                          pctsum*f=pctfmt7.);
  keylabel ALL = 'All Regions'
                 n = 'Number of Sales'
              sum = 'Average'
            pctsum = 'Percent';
  label TotalSales = 'Total Sales';
run; 
proc tabulate data=learn.missing format=4. missing;
   class A B;
   table A ALL,B ALL;
run; 
















