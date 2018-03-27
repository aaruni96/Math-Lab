clc;
clear;
function y=f(x)
	y=x^3+4*x^2-10;
endfunction
function z=p(x)
	z=3*x^2+8*x;
endfunction
a=1;
for i=1:5000
	x=a-f(a)/p(a);
	a=x;
end
mprintf("Solution is %f",x);
