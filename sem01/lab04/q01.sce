//tracing cardioid
clc;
clear;
t=[0:%pi/32:2*%pi];
a=2;
function r=f(t)
	r=a*(1+cos(t));
endfunction
polarplot(t,f(t));
xlabel("Initial Line");
ylabel("t=pi/2");
title("Cardioid");
