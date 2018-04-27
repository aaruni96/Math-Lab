//primes between x and y
clc;
clear;
x=200;
y=50;
p=primes(x);
for i=1:length(p)
	if p(i)>50
		disp(p(i))
	end
end
