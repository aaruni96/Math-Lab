clc;
clear;
function y=f(x)
	y=x*sin(x)+cos(x);
endfunction
function z=p(x)
	z=x*cos(x);
endfunction
a=1;
for i=1:5000
	x=a-f(a)/p(a);
	a=x;
end
mprintf("Solution is %f",x);
