clc;
clear;
a=[[5,-2,1];[1,6,-2];[3,1,5]];
b=[-4,-1,13];
x0=[0,0,0];
for k=1:5000
	x=x0;
	for i=1:3
		sump=0;
		for j=1:3
			if i~=j
				sump=sump+a(i,j)*x(j);
			end
		end
	x0(i)=(b(i)-sump)/a(i,i);
	end
end
mprintf("Solution of the equation is (%f,%f,%f)",x(1),x(2),x(3));
