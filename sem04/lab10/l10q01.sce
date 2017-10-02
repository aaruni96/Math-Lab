clc;
clear;
function f=f(x)
	f=2*x;
endfunction
flag=0;
c=0;
d=0;
for i=1:100
	for j=1:100
		if f(i+j) == f(i) + f(j) then
			flag=1;
		else
			flag=0;
		end
	end
end
for i=-100:100
	for j=-100:100
		if f(i)==f(j)
			if i==j then
				d=1;
			else
				d=0;
				break;
			end
		end
	end
end
a=input("Enter any number from the range");
for i=-100:0.05:100
	if f(i)==a then
		c=1;
		k=i;
		break;
	else
		c=0;
	end
end
if flag==1 then	
	mprintf("f is a homomorphism\n");
else
	mprintf("f is not a homomorphism\n");
end
if d==1 then
	mprintf("f is one-one\n");
else
	mprintf("f is not one-one\n");
end
if c==1 then
	mprintf("f is onto, and value is %f\n",k);
else
	mprtinf("f is not onto\n");
end
if flag==1 & c==1 & d==1 then
	mprintf("f is an isomorphism\n");
else
	mprintf("f is not an isomorphism\n");
