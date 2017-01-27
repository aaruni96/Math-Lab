clc;
clear;
x=1:8;
printf("\nX values");
disp(x);
y=[1,8,27,64,125,216,343,512];
printf("\ny values");
disp(y);
X=7.5;
n=length(x);
h=x(2)-x(1);
p=(X-x(n))/h;
sum1=y(n);
term=1;
printf("\nDifference Table");
for i=1:n-1
	for j=1:n-i
		y(j)=y(j+1)-y(j);
		printf("\t%d",y(j));
	end
	term=term*(p+i-1)/i;
	sum1=sum1+term*y(n-i);
	printf("\n");
end
printf("\nThe value of f(7.5) : %f", sum1);
