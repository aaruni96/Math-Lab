clc;
clear;
function y=f(x)
	y=3*x-1-cos(x);
endfunction
a=0;
b=1;
for i=0:5000
	x=(a+b)/2;
	if(f(x)>0) then
		b=x;
	elseif(f(x)<0) then
		a=x;
	else
		break;
	end
end
mprintf("Solution is %f",x);
