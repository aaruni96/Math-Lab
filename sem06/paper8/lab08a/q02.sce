clc;
clear;
function y=f(x)
	y=x^4-x-10;
endfunction
a=1;
b=2;
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
