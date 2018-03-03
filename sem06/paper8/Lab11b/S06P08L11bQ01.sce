clc;
clear;
function z=f(x,y)
	z=1+y/x;
endfunction
s=[1,2];
h=0.2;
x=1.4;
for i=1:(x-s(1))/h
	for j=1:500
		k1=h*f(s(1),s(2));
		k2=h*f(s(1)+h/2,s(2)+k1/2);
		k3=h*f(s(1)+h/2,s(2)+k2/2);
		k4=h*f(s(1)+h,s(2)+k3);
		k=(k1+2*k2+2*k3+k4)/6;
		s1=[s(1)+h, s(2)+k];
	end
	s=s1;
end
s
