clc;
clear;
function y=f(x)
	y=x^3-9*x+1;
endfunction
a=0;
b=1;
for i=0:5000
	x=(a+b)/2;
	if(f(x)>0) then
		a=x;
	elseif(f(x)<0) then
		b=x;
	else
		break;
	end
end
mprintf("Solution is %f",x);
