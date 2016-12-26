clear;
clc;
z=[0:5];
h=[0,3];
m=length(z);
n=length(h);
i=m/n;
mprintf("Index of the group is %d \n", i);
mprintf("The distinct right cosets are \n");
for i=1:n
	y(1,i) = h(i);
	mprintf("%d \t",y(1,i));
end
mprintf('\n');
for i=2:m
	for j=1:n
		y(i,j) = modulo (h(j)+i-1,m);
		if y(i,j)==y(1,1) | y(i,j)==y(1,2)
			abort
		else
			mprintf("%d \t",y(i,j));
		end
	end
	mprintf('\n');
end
