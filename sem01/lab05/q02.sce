//solve ODE
clc;
clear;
function t=f(x,y)
	t=(sin(x) - y*cos(x))/cos(x).^3;
endfunction
x0=0;
y0=1;
x=%pi/4;
y=ode(y0,x0,x,f)

//for graph
x=[0:0.1:%pi/2];
y=ode(y0,x0,x,f);
plot2d(x,y);
xlabel("X Axis")
ylabel("Y Axis")
title("Solution to ODE")
