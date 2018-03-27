clc;
clear;
function y=f(z)
	y=(2*z+2)/(z^2+2*z+2);
endfunction
intl(0,2*%pi,-%i,2,f)
