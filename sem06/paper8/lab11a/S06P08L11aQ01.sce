clc;
clear;
function z=f(x,y)
	z=x^2+y;
endfunction
s=[0,1];
h=0.02;
x=0.06;
for i=1:(x-s(1))/h
	s1(1)=s(1)+h;
	s1(2)=s(2)+h*f(s(1),s(2));
	for i=1:500
		s1(2)=s(2)+h/2*(f(s1(1),s1(2))+f(s(1),s(2)));
	end
	s=s1
end
