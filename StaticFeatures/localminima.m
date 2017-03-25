clear all;
pkg load signal;
load johnstride.txt;
x = johnstride;
a = 1;
b = [1/4 1/4 1/4 1/4];
y = filter(b,a,x);

t = 1:length(x);
%plot(t,x,'',t,y,'-');
%legend('original','mask is 1/4');

k=1;
for i=2:length(y)-1
if ( y(i-1)>y(i) && y(i+1)>y(i) )
val(k)=y(i);
pos(k)=i;

k=k+1;
endif
endfor
val
pos

w=pos(2):pos(4);
finalstride=y(w);



 %[pks idx] = findpeaks(y);
 plot(finalstride);
 %plot(t,y,t(pos),y(pos));
