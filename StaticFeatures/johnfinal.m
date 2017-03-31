clear all;
csvread anglejohn.txt;
mat = ans(:,1:191);
result = ones(size(mat));
%moving avergare filter

a = 1;
b = [1/4 1/4 1/4 1/4];
t = 1:191;
for i = 1:191
u = mat(:,i);
c = filter(b,a,u);
result(:,i ) = c;
end 

%plot(t,result(:,1),t,mat(:,1))
y = result(:,i);


%finds local minimas 
k=1;
for i=2:length(y)-1
if ( y(i-1)>y(i) && y(i+1)>y(i) )
val(k)=y(i);
pos(k)=i;

k=k+1;
endif
endfor

%extracts a gate cycle
val
pos

w=pos(2):pos(4);
finalstride=y(w);
plot(finalstride);
%plot(t,y,t(pos),y(pos));
gait=result(81:118,:);

%histogram
m = gait(:,7);
ceil(m);
hist(m,30)