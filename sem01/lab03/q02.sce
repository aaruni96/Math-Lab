//trace strophoid
clc;
clear;
x=[-4.99:0.01:4.99]';		//because we divide matrix by matrix
a=5;
y1=sqrt((a*x.^2+x.^3)/(a-x));
y2=-y1;
plot2d(x,y1);
plot2d(x,y2);
xlabel("X-Axis")
ylabel("Y-Axis")
title("Strophoid")
