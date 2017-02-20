proc iml; /* invoke IML */
call gstart; /* start graphics */
xbox={0 100 100 0};
ybox={0 0 100 100};
day=do(0,75,5); /* initialize day */
price={43.75,48,59.75,75.5, /* initialize price */
59.75,71.5,70.575,
61.125,79.5,72.375,67,
54.125,58.75,43.625,
47.125,45.50};
call gopen; /* start new graph */
call gpoly(xbox,ybox); /* draw a box around plot */
call gpoint(day,price); /* plot the points */
call gshow;
call gstart;
xbox={0 100 100 0};
ybox={0 0 100 100};
call gopen("stocks1"); /* begin new graph STOCKS1 */
call gset("height", 2.0);
year=do(71,86,1); /* initialize YEAR */
price={123.75 128.00 139.75 /* initialize PRICE */
155.50 139.750 151.500
150.375 149.125 159.500
152.375 147.000 134.125
138.750 123.625 127.125
125.50};
call gwindow({70 100 87 200}); /* define window */
call gpoint(year,price,"diamond","green"); /* graph the points */
call gdraw(year,price,1,"green"); /* connect points */
call gshow;
