//solve ODE
clc;
clear;
function t=f(x,y)
	t=y;
endfunction
x0=0;
y0=1;
x=2;
y=ode(y0,x0,x,f)

//for graph
x=[0:0.1:2];
y=ode(y0,x0,x,f);
plot2d(x,y);
xlabel("X Axis")
ylabel("Y Axis")
title("Solution to ODE")
