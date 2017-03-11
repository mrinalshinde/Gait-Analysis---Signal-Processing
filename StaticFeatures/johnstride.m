clear all;
load johnstride.txt;
x = johnstride;
a = 1;
b = [1/4 1/4 1/4 1/4];
y = filter(b,a,x);
t = 1:length(x);

plot(t,x,'',t,y,'-');
legend('original','mask is 1/4');

