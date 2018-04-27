//solve ODE
clc;
clear;
function t=f(x,y)
	t=(sin(x) - 2*y*tan(x));
endfunction
x0=%pi/3;
y0=0;
x=%pi;
y=ode(y0,x0,x,f)

//for graph
x=[%pi/2:0.1:2*%pi];
y=ode(y0,x0,x,f);
plot2d(x,y);
xlabel("X Axis")
ylabel("Y Axis")
title("Solution to ODE")
