clc;
clear;
x=0:0.1:0.4;
printf("\nX values");
disp(x);
y=[1,1.22,1.49,1.82,2.26];
printf("\ny values");
disp(y);
X=0.05;
n=length(x);
h=x(2)-x(1);
p=(X-x(1))/h;
sum1=y(1);
term=1;
printf("\nDifference Table");
for i=1:n-1
	for j=1:n-i
		y(j)=y(j+1)-y(j);
		printf("\t%f",y(j));
	end
	term=term*(p-i+1)/i;
	sum1=sum1+term*y(1);
	mprintf("\n");
end
printf("\nThe value of f(0.05) : %f", sum1);
