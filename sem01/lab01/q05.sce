//Fibonacci Series
clc;
clear;

f(1)=1;
f(2)=1;
for i=3:30
	f(i)=f(i-1)+f(i-2);
end
f
