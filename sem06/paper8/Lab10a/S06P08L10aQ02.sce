clc;
clear;
a=[[25,1,2];[1,3,0];[2,0,-4]];
x=[1;0;0];
for k=1:500
	x=a*x;
	b=max(x);
	x=x/b;
end
disp(x,"and Eigen vector is",b,"The eigen value is");
