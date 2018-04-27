//tracing cycloid
clc;
clear;
t=[-2*%pi:%pi/32:2*%pi];
a=4;
x=a*(t+sin(t));
y=a*(1-cos(t));
plot2d(x,y);
xlabel("X Axis");
ylabel("Y Axis");
title("Cycloid");
