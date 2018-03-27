clc;
clear;
function y=f(z)
	y=1/(z^2+4)^2;
endfunction
intl(0,2*%pi,-%i,2,f)
