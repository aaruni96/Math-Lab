//trace cissoid
clc;
clear;
x=[-3.99:0.01:3.99]';
a=4;
y1=sqrt(x.^3/(a-x));
y2=-y1;
plot2d(x,y1);
plot2d(x,y2);
xlabel("X-Axis")
ylabel("Y-Axis")
title("Cissoid")
