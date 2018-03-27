clc;
clear;
function y=f(x)
	y=2*x-log10(x)-7;
endfunction
a=3.5;
b=4;
for i=1:5000
	x=(a*f(b)-b*f(a))/(f(b)-f(a));
	if f(x)>0 then
		b=x;
	elseif f(x)<0 then
		a=x;
	else
		break;
	end
end
mprintf("Solution is %f",x);
