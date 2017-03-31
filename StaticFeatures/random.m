clear all;
load johnstride.txt;
a = johnstride;
y = 100*a;
w = ceil(y);

hist(w,100)
 set(gca,'XTick',20:3:30);