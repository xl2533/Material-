data ch0502;
input x @@;
cards;
70 72 94 24 68 57 90 185 95 93
109 64 58 79 40 118 84 70 99 132
154 100 77 34 68 26 48 87 85 95
123 105 107 55 45 73 109 58 101 134
94 94 62 156 61 84 77 123 135 40
107 79 131 72 66 30 44 141 98 100
90 78 44 50 58 60 76 78 92 101
62 152 97 81 54 98 75 118 130 90
115 136 100 80 69 98 84 25 179 97
76 56 73 43 22 82 60 68 160 139
;
RUN;
proc gchart;
vbar x/type=pct;run;