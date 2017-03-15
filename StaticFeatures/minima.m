load johnstride.txt;
x = johnstride;
a = 1;
b = [1/4 1/4 1/4 1/4];
y = filter(b,a,x);



set (0, "defaultlinelinewidth", 2);
d = y;
delta = 100;
[~, MINTAB] = peakdet (d', delta);
plot (d, ';;', MINTAB, d(MINTAB), 'O');
grid on;
%print out.png
