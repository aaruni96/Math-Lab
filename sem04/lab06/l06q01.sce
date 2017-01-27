clc;
clear;
x=1:5;
printf("\nX values");
disp(x);
y=[10,26,58,112,194];
printf("\ny values");
disp(y);
X=1.4;
n=length(x);
h=x(2)-x(1);
p=(X-x(1))/h;
sum1=y(1);
term=1;/
printf("\nDifference Table");
for i=1:n-1
	for j=1:n-i
		y(j)=y(j+1)-y(j);
		printf("\t%d",y(j));
	end
	term=term*(p-i+1)/i;
	sum1=sum1+term*y(1);
	mprintf("\n");
end
printf("\nThe value of f(1.4) : %f", sum1);
