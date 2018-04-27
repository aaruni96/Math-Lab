//tracing lemniscate of bernoulli
clc;
clear;
t=[0:%pi/32:2*%pi];
a=2;
function r=f(t)
	r=a*sqrt(cos(2*t));
endfunction
polarplot(t,real(f(t)));
xlabel("Initial Line");
ylabel("t=pi/2");
title("Lemniscate of Bernoulli");
