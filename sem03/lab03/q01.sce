clear;
clc;
z=[0:11];
h=[0,4,8];
m=length(z);
n=length(h);
i=m/n;
mprintf("Index of the group is %d \n", i);
mprintf("The distinct left cosets are \n");
for i=1:n
	y(1,i) = h(i);
	mprintf("%d \t",y(1,i));
end
mprintf('\n');
for i=2:m
	for j=1:n
		y(i,j) = modulo (i-1+h(j),m);
		if y(i,j)==y(1,1) | y(i,j)==y(1,2) | y(i,j)==y(1,3)
			abort
		else
			mprintf("%d \t",y(i,j));
		end
	end
	mprintf('\n');
end
