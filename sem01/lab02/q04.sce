//largest of n numbers
clc;
clear;
x=[5,6,10,24,125,362,1,24,-900];
large=x(1)
for i=1:length(x)
	if large<x(i) then
		large=x(i)
	end
end
large
