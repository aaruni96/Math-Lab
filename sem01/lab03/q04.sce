//trace lemniscate
clc;
clear;
x=[-2:0.01:2]';
a=4;
y1=sqrt((x.^2 - x.^4)/(a-x));
y2=-y1;
plot2d(x,y1);
plot2d(x,y2);
xlabel("X-Axis")
ylabel("Y-Axis")
title("Lemniscate")
