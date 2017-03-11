clear all;
load johnstride.txt;
load Azstride.txt;
x = johnstride;
a = 1;
b = [1/4 1/4 1/4 1/4];
y = filter(b,a,x);


p = Azstride;
y1 = filter(b,a,p);


t = 1:length(x);



plot(t,y,'-',t,y1,'-..-');
legend('john','azfar');

