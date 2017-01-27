clc;
clear;
funcprot();
function y=f(x)
	y=1/(1+x^2);
endfunction
x0=input("Lower limit of interval : ");
xn=input("Upper limit of interval : ");
n=input("No. of sub intervals : ");
h=(xn-x0)/n;
sum1=f(x0)+f(xn);
for i=1:n-1
	if modulo(i,2)==0 then
		sum1=sum1+2*f(x0+i*h);
	else
		sum1=sum1+4*f(x0+i*h);
	end
end
printf("Estimated value of given integration is : %f", h/3 * sum1);
