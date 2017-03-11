clear all;
load stride.txt;
x = stride;
a = 1;
b = [1/4 1/4 1/4 1/4];
y = filter(b,a,x);
t = 1:length(x);
w = y(4:75,1);






plot(t,x,'',t,w,'-');
legend('original','mask is 1/4');

