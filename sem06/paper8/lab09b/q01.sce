clc;
clear;
a=[[10,2,1];[1,10,1];[-2,3,10]];
b=[9,-22,22];
x=[0,0,0];
for k=1:5000
	for i=1:3
		sump=0;
		for j=1:3
			if i~=j
				sump=sump+a(i,j)*x(j);
			end
		end
		x(i)=(b(i)-sump)/a(i,i);
	end
end
mprintf("Solution of the equation is (%f,%f,%f)",x(1),x(2),x(3));
