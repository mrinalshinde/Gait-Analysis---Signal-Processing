clear all;

csvread angles1.txt;
y = ans(:,1);


hist(y,281)
 %set(gca,'XTick',20:3:30);