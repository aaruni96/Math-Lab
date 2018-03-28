clc;
clear;
a=[[27,6,-1];[6,15,2];[1,1,54]];
b=[85,72,110];
x=[0,0,0];
for k=1:5
	for i=1:3
		sump=0;
		for j=1:3
			if i~=j
				sump=sump+a(i,j)*x(j);
			end
		end
		x(i)=(b(i)-sump)/a(i,i);
	end
	x;
end
mprintf("Solution of the equation is (%f,%f,%f)",x(1),x(2),x(3));
