clc;
clear;
a=[[-15,4,3];[10,-12,6];[20,-4,2]];
x=[1;0;0];
for k=1:500
	x=a*x;
	b=max(x);
	x=x/b;
end
disp(x,"and Eigen vector is",b,"The eigen value is");

