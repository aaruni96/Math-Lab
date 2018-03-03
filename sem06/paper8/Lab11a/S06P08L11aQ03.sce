clc;
clear;
function z=f(x,y)
	z=x+y;
endfunction
s=[0,1];
h=0.1;
x=0.2;
for i=1:(x-s(1))/h
	s1(1)=s(1)+h;
	s1(2)=s(2)+h*f(s(1),s(2));
	for i=1:500
		s1(2)=s(2)+h/2*(f(s1(1),s1(2))+f(s(1),s(2)));
	end
	s=s1;
end
s
