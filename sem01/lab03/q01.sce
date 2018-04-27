//trace asteroid
clc;
clear;
x=[-5:0.01:5];
a=4;
y1=(a^(2/3) - (x.^2).^(1/3)).^(3/2);		//for some odd reason, x^(2/3) != (x^2)^(1/3)
y2=-y1;
plot2d(x,y1);
plot2d(x,y2);
xlabel("X-Axis")
ylabel("Y-Axis")
title("Asteroid")
