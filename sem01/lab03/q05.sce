//trace catenary
clc;
clear;
x=[-2:0.01:2];
a=3;
y=a*cosh(x/a);
plot2d(x,y);
xlabel("X-Axis")
ylabel("Y-Axis")
title("Catenary")
