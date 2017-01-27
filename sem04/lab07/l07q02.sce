clc;
clear;
x=[3,7,9,10];
y=[168,120,72,63];
X=6;
printf("\nx values");disp(x);
printf("\ny values");disp(y);
sum1=0;
n=length(x);
for i=1:n
	term=1;
	for j=1:n
		if i~=j then
			term = term*(X-x(j))/(x(i)-x(j));
		end,
	end
	sum1=sum1+term*y(i);
end
printf("\nEstimated value of f(10) = %f", sum1);
