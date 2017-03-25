k=1;
for i=2:length(A)-1
if ( A(i-1)>A(i) && A(i+1)>A(i) )
val(k)=A(i)
pos(k)=i

k=k+1;
endif
endfor

