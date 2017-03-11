clear all;
load Azstride.txt;
x = Azstride;
a = 1;
b = [1/4 1/4 1/4 1/4];
y = filter(b,a,x);

t = 1:length(x);
%plot(t,x,'',t,y,'-');
%legend('original','mask is 1/4');



 [pks idx] = findpeaks(y);
 plot(t,x,t,y,t(idx),y(idx));

