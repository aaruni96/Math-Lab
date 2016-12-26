clc;
clear;
g=[1,-1,%i,-(%i)];
h=[1,-1];
eg=1;
a=0;
for i=1:4
	ig(i)=eg/g(i);
end
mprintf("Inverse elements of G are\n");
disp(ig);
for i=1:1
	for j=1:4
		if g(j)*h(i)*ig(j)==h(1) | g(j)*h(i)*ig(j)==h(2) then
			a=1;
		else
			a=0;
			abort;
		end
	end
end
if a==1 then
	mprintf("H is a normal subgroup\n");
else
	mprintf("H is not a normal subgroup\n");
end
