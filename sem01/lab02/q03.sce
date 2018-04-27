//smallest of n numbers
clc;
clear;
x=[5,6,10,24,125,362,1,24,-900];
small=x(1)
for i=1:length(x)
	if small>x(i) then
		small=x(i)
	end
end
small
