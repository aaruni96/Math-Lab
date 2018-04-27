//tracing asteroid (parametric)
clc;
clear;
t=[-2*%pi:%pi/32:2*%pi];
a=4;
x=a*cos(t).^3;
y=a*sin(t).^3;
plot2d(x,y);
xlabel("X Axis");
ylabel("Y Axis");
title("Asteroid");
