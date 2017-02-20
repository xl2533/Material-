data ch1201;
input recipe $ weight @@;
cards;
a1 164 a1 190 a1 203 a1 205
a1 206 a1 214 a1 228 a1 257
a2 185 a2 197 a2 201 a2 231
a3 187 a3 212 a3 215 a3 220
a3 248 a3 265 a3 281
;
run;
proc anova data=ch1201;
class recipe;
model weight=recipe;
run;






